import 'dart:math';

import 'package:mqfm_apps/features/audio/domain/entities/audio.dart';

class CuratedSection {
  final String title;
  final List<String> keywords;
  final String? ustadz;

  const CuratedSection({
    required this.title,
    required this.keywords,
    this.ustadz,
  });
}

class CuratedContent {
  static const List<CuratedSection> sections = [
    CuratedSection(title: 'RAMADHAN YA KAJIAN', keywords: ['ramadhan', 'kajian', 'puasa', 'ibadah']),
    CuratedSection(title: 'SANTAI ADA ALLAH', keywords: ['allah', 'santai', 'tenang', 'damai']),
    CuratedSection(title: 'KAJIAN PALING DITUNGGU', keywords: ['kajian', 'populer', 'terbaik']),
    CuratedSection(title: 'PROGRAM GEN Z', keywords: ['gen z', 'muda', 'pemuda', 'remaja']),
    CuratedSection(title: 'MQFM VIBES', keywords: ['mqfm', 'radio', 'dakwah']),
    CuratedSection(title: 'AA GYM KAJIAN', keywords: ['aa gym', 'gymnastiar', 'daarut'], ustadz: 'aa gym'),
    CuratedSection(title: 'NASIHAT AA', keywords: ['nasihat', 'aa gym', 'ceramah'], ustadz: 'aa gym'),
    CuratedSection(title: 'SIPALING GEN Z', keywords: ['gen z', 'viral', 'trending']),
    CuratedSection(title: 'GALAU BANGET 🙏😭', keywords: ['galau', 'sedih', 'hati', 'sabar']),
    CuratedSection(title: 'DAARUT TAUHID VIBES', keywords: ['daarut', 'tauhid', 'pesantren']),
    CuratedSection(title: 'FAVORITE INIMAH', keywords: ['favorit', 'terbaik', 'pilihan']),
    CuratedSection(title: 'TAHAN AMARAH AH', keywords: ['amarah', 'sabar', 'emosi', 'marah']),
    CuratedSection(title: 'KAJIAN KECE', keywords: ['kajian', 'keren', 'motivasi']),
    CuratedSection(title: 'KAJIAN MENGAJI', keywords: ['mengaji', 'quran', 'tilawah', 'baca']),
    CuratedSection(title: 'ANAK MASJID ERA', keywords: ['masjid', 'sholat', 'jamaah']),
    CuratedSection(title: 'ISTIGHFAR DULU DEH', keywords: ['istighfar', 'taubat', 'ampun', 'dosa']),
    CuratedSection(title: 'OVERTHINKING SOLUSINYA', keywords: ['overthinking', 'pikiran', 'cemas', 'solusi']),
    CuratedSection(title: 'SELF REMINDER BGT 🤍', keywords: ['reminder', 'ingat', 'muhasabah', 'diri']),
    CuratedSection(title: 'HEALING TERBAIK', keywords: ['healing', 'hati', 'tenang', 'jiwa']),
    CuratedSection(title: 'CURHAT JALUR LANGIT', keywords: ['curhat', 'doa', 'langit', 'allah']),
    CuratedSection(title: 'HIDUP LAGI CAPEK-CAPEKNYA', keywords: ['capek', 'lelah', 'semangat', 'hidup']),
    CuratedSection(title: 'PEMUDA HIJRAH VIBES', keywords: ['hijrah', 'pemuda', 'tobat', 'berubah']),
    CuratedSection(title: 'ANTI FOMO AKHERAT', keywords: ['akhirat', 'fomo', 'dunia', 'prioritas']),
    CuratedSection(title: 'MOOD BOOSTER IMAN', keywords: ['mood', 'iman', 'semangat', 'motivasi']),
  ];

  static const int maxItemsPerSection = 10;

  static List<MapEntry<String, List<AudioEntity>>> buildSections(
    List<AudioEntity> allAudios,
  ) {
    final now = DateTime.now();
    final seed = (now.year * 10000) + (now.month * 100) + now.day;
    final random = Random(seed);

    final result = <MapEntry<String, List<AudioEntity>>>[];
    final usedIds = <int>{};
    final shuffledAudios = List<AudioEntity>.from(allAudios)..shuffle(random);

    for (final section in sections) {
      if (section.ustadz != null) {
        final ustadzLower = section.ustadz!.toLowerCase();
        final matched = shuffledAudios
            .where((audio) =>
                audio.artist.toLowerCase().contains(ustadzLower))
            .take(maxItemsPerSection)
            .toList();

        if (matched.isNotEmpty) {
          result.add(MapEntry(section.title, matched));
        }
        continue;
      }

      final matched = shuffledAudios.where((audio) {
        if (usedIds.contains(audio.id)) return false;
        final searchText = '${audio.title} ${audio.description} ${audio.artist}'.toLowerCase();
        return section.keywords.any((kw) => searchText.contains(kw));
      }).take(maxItemsPerSection).toList();

      if (matched.isEmpty) {
        final fallback = shuffledAudios
            .where((a) => !usedIds.contains(a.id))
            .take(maxItemsPerSection)
            .toList();
        if (fallback.isNotEmpty) {
          for (final a in fallback) {
            usedIds.add(a.id);
          }
          result.add(MapEntry(section.title, fallback));
        }
        continue;
      }

      for (final a in matched) {
        usedIds.add(a.id);
      }
      result.add(MapEntry(section.title, matched));
    }

    return result;
  }
}
