// Latihan 38 - Switch & AnimatedSwitcher widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  Widget myWidget = Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
          color: Colors.red));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 38 - Switch & AnimatedSwitcher widget',
              style: TextStyle(
                fontSize: 15,
              )),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: myWidget,
              // transitionBuilder: (child, animation) => ScaleTransition(
              //   scale: animation,
              //   child: child,
              // ),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
                activeColor: Colors.green, //memberikan warna ketika aktif/on
                inactiveTrackColor: Colors
                    .red[200], //memberikan warna pada track ketika keadaan off
                inactiveThumbColor: Colors
                    .red, //memberikan warna pada thumb/tombol ketika keadaan off
                value: isON,
                // berikut contoh perubahan animasi dari container ke text
                // onChanged: (newValue) {
                //   isON = newValue;
                //   setState(() {
                //     if (isON) {
                //       myWidget = SizedBox(
                //         height: 100,
                //         width: 200,
                //         child: Center(
                //           child: Text(
                //             'switch: ON',
                //             style: TextStyle(
                //               color: Colors.green,
                //               fontWeight: FontWeight.w700,
                //               fontSize: 20,
                //             ),
                //             textAlign: TextAlign.center,
                //           ),
                //         ),
                //       );
                //     } else {
                //       myWidget = Container(
                //           width: 200,
                //           height: 100,
                //           decoration: BoxDecoration(
                //               border: Border.all(color: Colors.black, width: 5),
                //               color: Colors.red));
                //     }

                // dibawah ini merupakan contoh perubahan dari container ke container dan tanpa key
                // onChanged: (newValue) {
                //   isON = newValue;
                //   setState(() {
                //     if (isON) {
                //       myWidget = Container(
                //           width: 200,
                //           height: 100,
                //           decoration: BoxDecoration(
                //               border: Border.all(
                //                   color: Colors.green[200], width: 5),
                //               color: Colors.green));
                //     } else {
                //       myWidget = Container(
                //           width: 200,
                //           height: 100,
                //           decoration: BoxDecoration(
                //               border:
                //                   Border.all(color: Colors.red[200], width: 5),
                //               color: Colors.red));
                //     }
                //   });
                // dibawah ini merupakan contoh perubahan dari container ke container dan menggunakan key
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON) {
                      myWidget = Container(
                          key: ValueKey(1),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.green[200], width: 5),
                              color: Colors.green));
                    } else {
                      myWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.red[200], width: 5),
                              color: Colors.red));
                    }
                  });
                })
          ],
        )),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// widget Switch berfungsi untuk memberikan tombol switch(on/off toggle)
// widget AnimatedSwitcher berfungsi untuk memberikan animasi kepada widget Switch
// diatas merupakan contoh penggunaanya