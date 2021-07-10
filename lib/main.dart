// Latihan 35 - HTTP Request (POST)

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyPostResult myPostResult = null; //nilai awal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 35 - HTTP Request (POST)'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              (myPostResult != null)
                  ? 'id : ${myPostResult.id} \n  name : ${myPostResult.name} \n  job : ${myPostResult.job} \n date : ${myPostResult.created}'
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
                  MyPostResult.connectToAPI('dodi', 'programmer').then((value) {
                    myPostResult = value;
                    setState(() {});
                  }); // disini kita memanggil API dan menambahkan sebuah data yang nanti akan kita tampilkan
                },
                child: Text('POST'))
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