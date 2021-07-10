// Latihan 36 - HTTP Request (GET)

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/get_user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User user = null; //nilai awal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 36 - HTTP Request (GET)'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              (user != null)
                  ? 'id : ${user.id} \n  name : ${user.name}'
                  : "tidak ada data", // jika datanya berhasil terkirim maka akan memunculkan data dari server dan jika tidak berhasil maka akan menampilkan pesan tidak ada ada
              style: TextStyle(
                color: Colors.blue,
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              maxLines: 4,
            ),
            ElevatedButton(
                onPressed: () {
                  User.connectToAPI('4').then((value) {
                    user = value;
                    setState(() {});
                  }); // disini kita memanggil API dan mengambil data dari id 4
                },
                child: Text('Get'))
          ],
        )),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// sebelumnya kita perlu memasang http pada pubspec.yaml
// pada contoh kali ini kita menggunakan API dari reqres.in untuk mempermudah pembnelajaran kita kali ini
// diatas merupakan contoh cara penggunannya dan beberapa penjelesannya
