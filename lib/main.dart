// Latihan 37 - HTTP Request (GET) banyak data sekaligus

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/get_users_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = 'no data'; //nilai awal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 37 - HTTP Request (GET) banyak data sekaligus',
              style: TextStyle(
                fontSize: 12,
              )),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              output,
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
                  User.getUsers('2').then((users) {
                    output = '';
                    for (int i = 0; i < users.length; i++) {
                      output += '[ nama user: ${users[i].name} ]';
                    }
                  });
                  setState(() {});
                  // disini kita memanggil API dan mengambil data dari id 4
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
