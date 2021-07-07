// Latihan 19 - TextField (Decoration)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TextEditingController controller = TextEditingController(text: 'ini adalah nilai awal textfield');
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan 19 - TextField (Decoration)'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    // border: InputBorder.none, // berguna untuk menghilangkan border
                    // border: OutlineInputBorder(), // berguna untuk membuat border yang mengelilingi fieldnya
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10)), // berguna untuk membuat border yang mengelilingi fieldnya dan mencustom border radius sendiri
                    icon: Icon(Icons
                        .adb), // berguna untuk membuat icon disebelah kiri field
                    prefixIcon: Icon(Icons
                        .person), // berguna untuk membuat icon didalam field pada sebelah kiri
                    suffixIcon: Icon(Icons
                        .search), // berguna untuk membuat icon didalam field pada sebelah kanan
                    prefix: Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.green,
                    ), // berguna untuk bisa memuat widget lainya disini contohnya menggunakan widget container
                    suffix: Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.only(left: 10),
                      color: Colors.red,
                    ), // berguna untuk bisa memuat widget lainya disini contohnya menggunakan widget container
                    // prefixText: 'nama : ', // berguna untuk membuat text didalam field sebelah kiri
                    // suffixText: 'bin toyib', // berguna untuk membuat text didalam field sebelah kiri
                    // prefixStyle: TextStyle( color: Colors.blue, fontWeight: FontWeight.bold), // berguna untuk membuat styling untuk prefixText
                    // suffixStyle: TextStyle(color: Colors.green,fontWeight: FontWeight.bold), // berguna untuk membuat styling untuk Suffixtext
                    labelText:
                        "masukan namamu", // berguna untuk membuat text diatas field dalam bordernya
                    labelStyle: TextStyle(
                        color: Colors.red), // berguna untuk styling label
                    hintText:
                        'ketik di sini...', // berguna untuk membuat text placeholder
                    hintStyle: TextStyle(
                        color: Colors.blue), // berguna untuk styling hint
                    filled:
                        true, // berguna untuk memperbolehkan fieldnya berwarna
                    fillColor: Colors
                        .lightBlue[100], // berguna untuk memberi warna fieldnya
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
              ),
              Text(controller.text)
            ],
          )),
    );
  }
}
// penjelasan singkat
// ----------------
// widget TextField memiliki property InputDecoration yang memiliki berbagai widget juga property yang berguna untuk memodifikasi tampilan texfield. lihat saja pada kode diatas
// jika kita menggunakan property prefix maka property prefixText dan prefixStyle harus di nonaktifkan terlebih dahulu
// jika kita menggunakan property Suffix maka property SuffixText dan SuffixStyle harus di nonaktifkan terlebih dahulu