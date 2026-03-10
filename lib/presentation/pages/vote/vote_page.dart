import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqfm_apps/core/di/injection.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/core/utils/helpers/message_helper.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_bloc.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_event.dart';
import 'package:mqfm_apps/features/vote/applications/vote_bloc/vote_state.dart';
import 'package:mqfm_apps/presentation/atoms/common/shimmer_list.dart';
import 'package:mqfm_apps/presentation/molecules/common/custom_app_bar.dart';
import 'package:mqfm_apps/presentation/molecules/common/empty_state_card.dart';
import 'package:mqfm_apps/presentation/molecules/vote/vote_ranking_tile.dart';

class VotePage extends StatefulWidget {
  const VotePage({super.key});

  @override
  State<VotePage> createState() => _VotePageState();
}

class _VotePageState extends State<VotePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  late final VoteBloc _voteBloc;

  @override
  void initState() {
    super.initState();
    _voteBloc = getIt<VoteBloc>()..add(const VoteEvent.fetchWeeklyRanking());
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    if (_tabController.index == 0) {
      _voteBloc.add(const VoteEvent.fetchWeeklyRanking());
    } else {
      _voteBloc.add(const VoteEvent.fetchMonthlyRanking());
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    _voteBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _voteBloc,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(
          title: 'Vote & Ranking',
          backgroundColor: AppColors.background,
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              indicatorColor: AppColors.primary,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.textSecondary,
              labelStyle: TextStyle(
                fontSize: AppDims.sp14,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(text: 'Mingguan'),
                Tab(text: 'Bulanan'),
              ],
            ),
            Expanded(
              child: BlocConsumer<VoteBloc, VoteState>(
                listener: (context, state) {
                  state.whenOrNull(
                    actionSuccess: (message) {
                      MessageHelper.showSuccess(context, message);
                      if (_tabController.index == 0) {
                        _voteBloc.add(const VoteEvent.fetchWeeklyRanking());
                      } else {
                        _voteBloc.add(const VoteEvent.fetchMonthlyRanking());
                      }
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const ShimmerList(itemCount: 10),
                    rankingLoaded: (rankings) {
                      if (rankings.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppDims.w24,
                            ),
                            child: const EmptyStateCard(
                              icon: Icons.bar_chart,
                              message: 'Belum ada data ranking',
                            ),
                          ),
                        );
                      }
                      return RefreshIndicator(
                        onRefresh: () async {
                          if (_tabController.index == 0) {
                            _voteBloc.add(const VoteEvent.fetchWeeklyRanking());
                          } else {
                            _voteBloc.add(const VoteEvent.fetchMonthlyRanking());
                          }
                        },
                        child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          cacheExtent: 500,
                          itemCount: rankings.length,
                          itemBuilder: (context, index) {
                            final ranking = rankings[index];
                            return RepaintBoundary(
                              child: VoteRankingTile(
                                ranking: ranking,
                                onVote: () {
                                  _voteBloc.add(
                                    VoteEvent.cast(audioId: ranking.audioId),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                    error: (message) => Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppDims.w24),
                        child: EmptyStateCard(
                          icon: Icons.error_outline,
                          message: message,
                        ),
                      ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
