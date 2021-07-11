// Latihan 39 - AnimatedPadding widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Latihan 39 - AnimatedPadding widget',
            style: TextStyle(
              fontSize: 18,
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      //untuk memberikan animasi padding pada childnya
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        //untuk membuat suatu event ketika diklik
                        onTap: () {
                          setState(() {
                            myPadding = 10;
                          });
                        },
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      //untuk memberikan animasi padding pada childnya
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        //untuk membuat suatu event ketika diklik
                        onTap: () {
                          setState(() {
                            myPadding = 5;
                          });
                        },
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ))
              ],
            )),
        Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      //untuk memberikan animasi padding pada childnya
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        //untuk membuat suatu event ketika diklik
                        onTap: () {
                          setState(() {
                            myPadding = 15;
                          });
                        },
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      //untuk memberikan animasi padding pada childnya
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        //untuk membuat suatu event ketika diklik
                        onTap: () {
                          setState(() {
                            myPadding = 20;
                          });
                        },
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                    )),
              ],
            )),
      ]),
    ));
  }
}
// penjelasan singkat
// ----------------
// widget AnimatedSwitcher berfungsi untuk memberikan animasi padding pada suatu widget seperti container
// diatas merupakan contoh penggunaanya
