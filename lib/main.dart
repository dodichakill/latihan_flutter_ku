// latihan 7 - TextStyle

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 7 - TextStyle'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ini text dengan font poppins regular',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    decoration: TextDecoration.overline,
                    decorationColor: Colors.green,
                    decorationThickness: 4,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),
                Text(
                  'ini text dengan font poppins italic',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.green,
                    decorationThickness: 4,
                    fontStyle: FontStyle.italic,
                    decorationStyle: TextDecorationStyle.dotted,
                  ),
                ),
                Text(
                  'ini text dengan font poppins bold',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationThickness: 4,
                    decorationStyle: TextDecorationStyle.double,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// TextStyle merupakan widget yang berguna untuk styling text
// jika kita ingin mencustom fonts sendiri kita bisa menambahkannya fontnya di folder/buat folder fonts lalu masukan font yang udah ditentukan/didownload ke dalam folder fonts, lalu kita daftarkan font tadi pada pubspec.yaml (lihat saja pada file pubspec.yaml), setelah didaftarkan fonts tersebut bisa digunakan dengan menggunakan widget TextStyle (dan beberapa styling) seperti contoh diatas.