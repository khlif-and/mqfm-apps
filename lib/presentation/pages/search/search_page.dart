import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mqfm_apps/controller/audio/audio_controller.dart';
import 'package:mqfm_apps/model/audio/audio_model.dart';
import 'package:mqfm_apps/presentation/molecules/search/browse_card.dart';
import 'package:mqfm_apps/presentation/molecules/search/discover_card.dart';
import 'package:mqfm_apps/presentation/molecules/search/search_input_bar.dart';
import 'package:mqfm_apps/presentation/organisms/navigation/bottom_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final AudioController _audioController = AudioController();

  List<Audio> _searchResults = [];
  bool _isSearching = false;
  bool _isLoading = false;

  void _onSearchChanged(String query) {
    if (query.isEmpty) {
      setState(() {
        _isSearching = false;
        _searchResults = [];
      });
      return;
    }

    setState(() {
      _isSearching = true;
      _isLoading = true;
    });

    _performSearch(query);
  }

  Future<void> _performSearch(String query) async {
    try {
      final response = await _audioController.searchAudios(query);
      if (mounted) {
        setState(() {
          _searchResults = response.data ?? [];
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _searchResults = [];
        });
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16.r,
                            backgroundColor: Colors.grey,
                            backgroundImage: const AssetImage(
                              'assets/images/img_card.jpg',
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 28.r,
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  SearchInputBar(
                    controller: _searchController,
                    onChanged: _onSearchChanged,
                  ),
                ],
              ),
            ),
            Expanded(
              child: _isSearching
                  ? _buildSearchResults()
                  : SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8.h),
                          Text(
                            'Start browsing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            childAspectRatio: 1.6,
                            mainAxisSpacing: 12.h,
                            crossAxisSpacing: 12.w,
                            children: const [
                              BrowseCard(
                                title: 'Music',
                                color: Color(0xFFE91E63),
                                imageAsset: 'assets/images/img_card.jpg',
                              ),
                              BrowseCard(
                                title: 'Podcasts',
                                color: Color(0xFF00695C),
                                imageAsset: 'assets/images/img_card.jpg',
                              ),
                              BrowseCard(
                                title: 'Live Events',
                                color: Color(0xFF7B1FA2),
                                imageAsset: 'assets/images/img_card.jpg',
                              ),
                              BrowseCard(
                                title: 'K-Pop ON!\n(온) Hub',
                                color: Color(0xFF1565C0),
                                imageAsset: 'assets/images/img_card.jpg',
                              ),
                              BrowseCard(
                                title: 'Wrapped\nLive Ind...',
                                color: Color(0xFFBF360C),
                                imageAsset: 'assets/images/img_card.jpg',
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          Text(
                            'Discover something new',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                DiscoverCard(
                                  imageAsset: 'assets/images/img_card.jpg',
                                  tag: '#chill',
                                ),
                                SizedBox(width: 16.w),
                                DiscoverCard(
                                  imageAsset: 'assets/images/img_card.jpg',
                                  tag: '#cinnamon',
                                ),
                                SizedBox(width: 16.w),
                                DiscoverCard(
                                  imageAsset: 'assets/images/img_card.jpg',
                                  tag: '#hope',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }

  Widget _buildSearchResults() {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.white),
      );
    }

    if (_searchResults.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, color: Colors.grey, size: 64.r),
            SizedBox(height: 16.h),
            Text(
              "No results found",
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final audio = _searchResults[index];
        return GestureDetector(
          onTap: () {
            context.push('/player/${audio.id}');
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              children: [
                Container(
                  height: 50.w,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    image: DecorationImage(
                      image: audio.thumbnail.isNotEmpty
                          ? NetworkImage(audio.thumbnail) as ImageProvider
                          : const AssetImage('assets/images/img_card.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        audio.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        audio.description,
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.play_circle_fill, color: Colors.white, size: 30.r),
              ],
            ),
          ),
        );
      },
    );
  }
}
