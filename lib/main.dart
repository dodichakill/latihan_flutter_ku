// Latihan 40 - Shared Preferences & Double Question Mark Operator (__)

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller =
      TextEditingController(text: 'no name'); //kondisi default TextField
  bool isON = false; //kondisi tombol

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', controller.text);
    pref.setBool('ison', isON);
  } // berguna untuk menyimpan data yang telah dibuat

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ??
        'no name'; //jika datanya tidak null maka tampilkan data nama jika tidak maka tampilkan 'no name'
  } // berguna untuk mendapatkan data nama yang telah disimpan

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ??
        false; //jika datanya tidak null maka tampilkan data ison jika tidak tampilkan false
  } // berguna untuk mendapatkan data isON yang telah disimpan

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
            'Latihan 40 - Shared Preferences & Double Question Mark Operator (__)',
            style: TextStyle(
              fontSize: 10,
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: controller,
          ),
        ),
        Switch(
            value: isON,
            onChanged: (newValue) {
              setState(() {
                isON = newValue;
              });
            }),
        ElevatedButton(
            onPressed: () {
              saveData(); //menjalankan perintah saveData
            },
            child: Text('Save')),
        ElevatedButton(
            onPressed: () {
              getNama().then((s) {
                controller.text = s;
                setState(() {});
              }); //menjalankan perintah getNama dan mengisi nilainya pada controller.text
              getON().then((b) {
                isON = b;
                setState(() {});
              });
            },
            child: Text('Load'))
      ]),
    ));
  }
}
// penjelasan singkat
// ----------------
// Shared Preferences berguna untuk menyimpan data yang tidak terlalu kompleks
// sebelum menggunakannya pastikan shared_preferences sudah terdaftar pada pubspec.yaml
// diatas merupakan contoh penerapannya