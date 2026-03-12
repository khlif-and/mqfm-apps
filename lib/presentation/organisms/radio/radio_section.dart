import 'package:flutter/material.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_colors.dart';
import 'package:mqfm_apps/core/utils/constants/styles/app_dims.dart';
import 'package:mqfm_apps/presentation/molecules/radio/radio_card.dart';

const _dummyRadios = [
  (
    title: 'Radio Musik Pop',
    genre: 'Pesta',
    artists: 'Mike Posner, Icona Pop, Mungo Jerry',
    thumbnails: <String>[
      'https://i.scdn.co/image/ab67616d00001e024718e2b124f79258be7bc452',
      'https://i.scdn.co/image/ab67616d00001e02e81d635bedfd38adf6d2dffc',
      'https://i.scdn.co/image/ab67616d00001e025ef878a782c987e46e286c41',
    ],
  ),
  (
    title: 'Radio Elektronik',
    genre: 'Musik Populer',
    artists: 'Mike Posner, NBSPLV, Farruko',
    thumbnails: <String>[
      'https://i.scdn.co/image/ab67616d00001e024718e2b124f79258be7bc452',
      'https://i.scdn.co/image/ab67616d00001e02e81d635bedfd38adf6d2dffc',
      'https://i.scdn.co/image/ab67616d00001e025ef878a782c987e46e286c41',
    ],
  ),
  (
    title: 'Radio Opick',
    genre: 'Romansa',
    artists: 'Natasha, Gita Gutawa, Fadly',
    thumbnails: <String>[
      'https://i.scdn.co/image/ab67616d00001e024718e2b124f79258be7bc452',
      'https://i.scdn.co/image/ab67616d00001e02e81d635bedfd38adf6d2dffc',
      'https://i.scdn.co/image/ab67616d00001e025ef878a782c987e46e286c41',
    ],
  ),
  (
    title: 'Radio Nasyid',
    genre: 'Islami',
    artists: 'Raihan, Mesut Kurtis, Maher Zain',
    thumbnails: <String>[
      'https://i.scdn.co/image/ab67616d00001e024718e2b124f79258be7bc452',
      'https://i.scdn.co/image/ab67616d00001e02e81d635bedfd38adf6d2dffc',
      'https://i.scdn.co/image/ab67616d00001e025ef878a782c987e46e286c41',
    ],
  ),
];

class RadioSection extends StatelessWidget {
  final VoidCallback? onSeeAll;

  const RadioSection({super.key, this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Radio untuk Anda',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: AppDims.sp18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (onSeeAll != null)
                GestureDetector(
                  onTap: onSeeAll,
                  child: Text(
                    'Lihat semua',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: AppDims.sp12,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: AppDims.h16),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: AppDims.w16),
            itemCount: _dummyRadios.length,
            separatorBuilder: (_, __) => SizedBox(width: AppDims.w12),
            itemBuilder: (_, i) {
              final r = _dummyRadios[i];
              return RadioCard(
                title: r.title,
                genre: r.genre,
                artistsText: r.artists,
                thumbnails: r.thumbnails,
              );
            },
          ),
        ),
      ],
    );
  }
}
