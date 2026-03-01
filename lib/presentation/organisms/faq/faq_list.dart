import 'package:flutter/material.dart';
import 'package:mqfm_apps/presentation/molecules/faq/faq_accordion_item.dart';

class FaqList extends StatelessWidget {
  const FaqList({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar 12 bantuan & faq
    final List<Map<String, String>> faqs = [
      {
        "q": "Bagaimana cara mendengarkan siaran langsung MQFM?",
        "a":
            "Anda dapat mendengarkan siaran langsung MQFM dengan menekan tombol Play berlogo radio yang berada di halaman utama aplikasi.",
      },
      {
        "q": "Apakah aplikasi ini berbayar?",
        "a":
            "Tidak, aplikasi MQFM APPS sepenuhnya gratis untuk diunduh dan digunakan. Semua kajian dan podcast dapat didengarkan tanpa biaya.",
      },
      {
        "q": "Bagaimana cara membuat akun di MQFM APPS?",
        "a":
            "Anda bisa mendaftar dengan email atau langsung login menggunakan akun Google Anda melalui menu profil atau saat pertama kali masuk aplikasi.",
      },
      {
        "q": "Apakah saya bisa menyimpan kajian untuk didengarkan nanti?",
        "a":
            "Ya, Anda bisa menekan tombol hati/Love pada kajian yang Anda sukai, sehingga akan tersimpan secara otomatis di Daftar Kajian Favorit Anda.",
      },
      {
        "q": "Kenapa audio sering terputus saat mendengarkan podcast?",
        "a":
            "Hal ini biasanya disebabkan oleh koneksi internet yang tidak stabil. Pastikan Anda memiliki sinyal yang kuat, atau coba gunakan jaringan Wi-Fi.",
      },
      {
        "q":
            "Apakah ada fitur unduhan (download) untuk didengarkan secara offline?",
        "a":
            "Ya, beberapa podcast khusus menyediakan tombol unduh yang memungkinkan Anda menyimpan file untuk didengarkan saat tidak ada koneksi internet.",
      },
      {
        "q": "Bagaimana cara mengganti kata sandi akun saya?",
        "a":
            "Masuk ke menu Pengaturan dari Sidebar Profil, lalu pilih opsi Akun dan tap Ganti Kata Sandi.",
      },
      {
        "q": "Mengapa aplikasi MQFM memakan banyak daya baterai?",
        "a":
            "Aplikasi streaming memang umumnya menggunakan lebih banyak baterai. Anda bisa mengurangi penggunaan dengan memutar di latar belakang saat layar mati.",
      },
      {
        "q":
            "Apakah saya dapat melihat riwayat kajian yang sudah saya dengarkan?",
        "a":
            "Tentu, Anda dapat melihat seluruh riwayat putaran kajian melalui menu 'Riwayat Dengar' yang ada pada bagian Sidebar.",
      },
      {
        "q": "Bagaimana cara mencari topik kajian tertentu?",
        "a":
            "Anda dapat menggunakan kolom pencarian (Search) di halaman utama, kemudian ketik nama Ustadz atau topik yang ingin Anda dengarkan.",
      },
      {
        "q":
            "Siaran radio tiba-tiba mati saat masuk aplikasi lain, bagaimana cara mengatasinya?",
        "a":
            "Pastikan izin berjalan di latar belakang (Background Process) untuk aplikasi MQFM diaktifkan pada pengaturan sistem perangkat smartphone Anda.",
      },
      {
        "q": "Bagaimana cara melaporkan jika ada error pada sistem aplikasi?",
        "a":
            "Anda dapat menghubungi tim teknis kami secara langsung melalui fitur Bantuan Kontak (WhatsApp / Email) yang ada pada halaman ini.",
      },
    ];

    return Column(
      children: faqs.map((faq) {
        return FaqAccordionItem(title: faq['q']!, content: faq['a']!);
      }).toList(),
    );
  }
}
