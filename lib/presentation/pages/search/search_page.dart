import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_bloc.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_event.dart';
import 'package:mqfm_apps/features/audio/presentation/bloc/audio_list_bloc/audio_list_state.dart';
import 'package:mqfm_apps/presentation/molecules/guide_tour/search_tour_targets.dart';
import 'package:mqfm_apps/presentation/organisms/guide_tour/guide_tour_manager.dart';
import 'package:mqfm_apps/presentation/organisms/search/browse_category_grid.dart';
import 'package:mqfm_apps/presentation/organisms/search/discover_horizontal_list.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_header.dart';
import 'package:mqfm_apps/presentation/organisms/search/search_result_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _searchBarKey = GlobalKey();
  final GlobalKey _mixedKey = GlobalKey();
  final GlobalKey _discoverKey = GlobalKey();
  bool _isSearching = false;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final targets = buildSearchTargets(
        profileKey: _profileKey,
        searchBarKey: _searchBarKey,
        mixedKey: _mixedKey,
        discoverKey: _discoverKey,
      );
      GuideTourManager.showTourIfNeeded(context: context, targets: targets, tourKey: 'search_tour_shown');
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    _debounce?.cancel();
    if (query.trim().isEmpty) {
      setState(() => _isSearching = false);
      return;
    }
    setState(() => _isSearching = true);
    _debounce = Timer(const Duration(milliseconds: 400), () {
      context.read<AudioListBloc>().add(AudioListEvent.search(query: query.trim()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AudioListBloc>(),
      child: BlocListener<AudioListBloc, AudioListState>(
        listener: (context, state) {
          state.whenOrNull(error: (message) => MessageHelper.showError(context, message));
        },
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDims.w16, vertical: AppDims.h16),
                child: SearchHeader(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  profileKey: _profileKey,
                  searchBarKey: _searchBarKey,
                ),
              ),
              Expanded(
                child: BlocBuilder<AudioListBloc, AudioListState>(
                  builder: (context, state) {
                    if (state is AudioListLoading && _isSearching) {
                      return const Center(child: CircularProgressIndicator(color: AppColors.textWhite));
                    }
                    if (_isSearching) {
                      final results = state.maybeWhen(loaded: (audios) => audios, orElse: () => []);
                      return SearchResultList(results: results);
                    }
                    return SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(key: _mixedKey, child: const BrowseCategoryGrid()),
                          SizedBox(height: AppDims.h32),
                          Container(key: _discoverKey, child: const DiscoverHorizontalList()),
                          SizedBox(height: AppDims.h30),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

