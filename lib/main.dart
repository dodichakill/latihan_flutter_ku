// Latihan 33 - Font Features
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan 33 - Font Features'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Contoh 01 (Tanpa apapun)',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Contoh 02 (Small Caps)',
                  style: TextStyle(fontSize: 18, fontFeatures: [
                    FontFeature.enable('smcp')
                  ]), // mengatifkan small caps (mengubah huruf small caps menjadi upper caps)
                ),
                Text(
                  'Contoh 03 1/2 (Small Caps & frac)',
                  style: TextStyle(fontSize: 18, fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable(
                        'frac'), //jika ingin mengetahui tentang featurelist lebih detail bisa baca doc (docs.microsoft.com/en-us/typography/opentype/spec/featurelist)
                  ]), // mengatifkan small caps (mengubah huruf small caps menjadi upper caps) dan mengaktifkan fitur frac(penulisan khusus angka) perlu diingat tidak semua font memiliki fitur frac
                ),
                Text(
                  'contoh milonga - 3 1/2 (Small Caps & frac)',
                  style:
                      TextStyle(fontSize: 18, fontFamily: 'Milonga', fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable(
                        'frac'), //jika ingin mengetahui tentang featurelist lebih detail bisa baca doc (docs.microsoft.com/en-us/typography/opentype/spec/featurelist)
                  ]), // mengatifkan small caps (mengubah huruf small caps menjadi upper caps) dan mengaktifkan fitur frac(penulisan khusus angka) perlu diingat tidak semua font memiliki fitur frac
                ),
                Text(
                  'Contoh Cardo - 29 (Tanpa apapun)',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Cardo",
                  ),
                ),
                Text(
                  'Contoh Cardo - 29 (old style figures)',
                  style:
                      TextStyle(fontSize: 18, fontFamily: "Cardo", fontFeatures: [
                    FontFeature.oldstyleFigures(),
                  ]), // mengatifkan old style(merubah gaya penulisan menjadi oldstyle)
                ),
                Text(
                  'Contoh Gabriola (Tanpa apapun)',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Gabriola",
                  ),
                ),
                Text(
                  'Contoh Gabriola (style set no 5)',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Gabriola",
                      fontFeatures: [
                        FontFeature.stylisticSet(
                            5), // styleshet terdiri dari angka 1 sampai 20
                      ]), // mengubah style set font (tidak semua font memiliki ini)
                ),
              ],
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// kita perlu mendaftarkan fontnya pada pubspec.yaml.
// diatas merupakan contoh cara penggunannya dan penjelesananya