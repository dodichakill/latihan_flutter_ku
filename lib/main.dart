// Latihan 24 - Hero, ClipRRect widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //menghilangkan banner debug
        home: Scaffold(
          // appbar biasa
          // appBar: AppBar(
          //   backgroundColor: Colors.green,
          //   title: Text(
          //     'Latihan 25 - PrefferedSized widget',
          //     style: TextStyle(fontSize: 11),
          //   ),
          // ),

          // // appBar custom height
          // appBar: PreferredSize(
          //   // PreferredSize berguna untuk mengcustom tampilan appbar
          //   preferredSize: Size.fromHeight(200),
          //   child: AppBar(
          //     backgroundColor: Colors.indigo,
          //     title: Text('appbar Custom height'),
          //   ),
          // ),

          // appBar custom layout dengan FlexibleSpace
          appBar: PreferredSize(
            // PreferredSize berguna untuk mengcustom tampilan appbar
            preferredSize: Size.fromHeight(200),
            child: AppBar(
              backgroundColor: Colors.indigo,
              flexibleSpace: Container(
                margin: EdgeInsets.all(20),
                child: Positioned(
                  bottom: 100,
                  right: 10000,
                  child: Text(
                    'Custom appbar dengan eflexibleSpace',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),

          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                'Latihan 25 - PrefferedSized widget (Membuat Custom AppBar dengan Custom Height)',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}
// penjelasan singkat
// ----------------
// ada di kodenya
