// Latihan 20 - MediaQuery

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
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan 20 - MediaQuery'),
        ),
        // body: Container(
        //   color: Colors.red,
        //   width: MediaQuery.of(context).size.width /
        //       3, // berfungsi untuk membuat lebar layar di bagi 3
        //   height: MediaQuery.of(context).size.height /
        //       2, // berfungsi untuk membuat lebar layar di bagi 2
        // ),

        // berikut ini kita akan membuat sebuah tampilan yang responsive
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers,
              )
            : Row(
                children: generateContainers,
              ));
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ];
  }
}
// penjelasan singkat
// ----------------
// properti MediaQuery berfungsi untuk menentukan ukuran suatu tinggi dan lebar suatu widget secara flexible
// diatas merupakan contoh penerapan mediaquery untuk membuat tampilan yang responsive
