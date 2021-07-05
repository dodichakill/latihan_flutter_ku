// Latihan 11 - Stack & Align widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String pesan =
      'ini merupakan pesan awal untukmu calon programmer sukses dunia akhirat :)';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Latihan 11 - Stack & Align widget',
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.black26,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.orange,
                              ))
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.orange,
                              )),
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.black26,
                              ))
                        ],
                      )),
                ],
              ),
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      pesan,
                      style: TextStyle(fontSize: 19, color: Colors.white),
                    ),
                  )
                ],
              ),
              Align(
                // alignment: Alignment.bottomCenter,
                alignment: Alignment(0, 0.78),
                child: Container(
                  child: ElevatedButton(
                      onLongPress: () {
                        setState(() {
                          pesan =
                              'tetap semangat dalam mengejar mimpimu wahai calon programmer sukses dunia akhirat :)';
                        });
                      },
                      onPressed: () {
                        setState(() {
                          pesan =
                              'jangan bandingkan dirimu dengan orang lain tapi bandingkanlah dirimu dengan dirimu yang dahulu :)';
                        });
                      },
                      child: Text(
                        'pesan baru untukmu!',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ),
              )
            ],
          )),
    );
  }
}


// penjelasan singkat
// ----------------
// berbeda dengan widget row yang menghasilkan widget lainya akan sejajar secara horizontal dan widget column secara vertikal, Widget Stack akan sejajar secara bertumpuk ke sumbu Z (dari bawah sampe atas) 
// widget Align berfungsi untuk mengatur sebuah tataletak suatu widget yang ada dialamnya. dan mempunyai property alignment yang dapat berisi :
// - Alignment(x, y), x terdiri nilai dari -1 sampai 1 yang berarti kalo -1 itu artinya letaknya ada di sebelah kiri, 0 untuk tengah, dan 1 untuk kanan. y pun demikian kalo -1 itu atas, 0 itu tengah dan 1 itu bawah
// - Alignment.bottomCenter, letaknya tengah bawah
// - Alignment.bottomRight, letaknya kanan bawah
// - Alignment.bottomLeft, letaknya kiri bawah
// - Alignment.center, letaknya tengah tengah
// - Alignment.centerRight, letaknya kanan tengah
// - Alignment.centerLeft, letaknya kiri tengah
// - Alignment.topCenter, letaknya atas tengah
// - Alignment.topLeft, letaknya atas kiri
// - Alignment.topRight, letaknya atas kanan