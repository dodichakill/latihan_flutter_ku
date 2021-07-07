// Latihan 18 - TextField widget

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
            title: Text('Latihan 18 - TextField widget'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  // maxLength: 10,
                  // maxLines: 4,
                  // obscureText: true,
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
// TextField merupakan widget yang berfungsi untuk membuat sebuah kotak yang bisa menampung teks. ia mempunyai beberapa property seperti: maxLength untuk mengatur maksimal panjang kata, MaxLength untuk mengatur maksimal berapa baris kata, obscureText untuk membuat tulisan menjadi tertutup (biasanya digunakan untuk membuat password). dan beberapa property lainnya