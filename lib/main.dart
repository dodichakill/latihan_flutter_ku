// Latihan 15 - Navigasi Multi Page Screen

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/login_page.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// penjelasan singkat
// ----------------
// kita akan membahas konsep navigasi multi pages
// page/screen di flutter di sebut route, route akan di letakkan di stack. stack akan dipakai untuk menyimpan route. dan yang bisa mengatur stack/route adalah navigator. navigator merupakan yang mengatur perintah yang akan dikerjakan.
// kita buat ilustrasi sebuah halaman login page, main page, second page. login page berada di stack paling dasar dan main page berada ditengah stack serta second page berada diatas page, dan kita ingin tiap page mempunyai tombol yang mengarah ke page atasnya. dan kita ilustrasikan jika sudah berada di page main page maka kita tidak bisa kembali ke login page, namun second page bisa kembali ke main page. untuk membuat login page tidak bisa diakses kembali setelah memasuki main page kita bisa menggunakan perintah push replacement, dan ketika kita berada di main page ingin memasuki ke second page kita bisa menggunakan perintah push, dan ketika berada di second page kita ingin kembali ke main page kita bisa menggunakan perintah pop.
// dilatihan ini kita membuat beberapa file untuk melatih kita.
// langsung saja lihat file terkaitnya supaya lebih paham :)