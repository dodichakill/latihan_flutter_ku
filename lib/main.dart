// Latihan 21 - InkWell (membuat sendiri button dengan gradasi)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 21 - InkWell (membuat sendiri button dengan gradasi)',
            style: TextStyle(fontSize: 11),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                // berikut merupakan button bawaan
                onPressed: () {},
                shape: StadiumBorder(),
                child: Text('Raised Button'),
                color: Colors.amber,
              ),
              // berikut ini custom button sendiri
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Colors.green, Colors.blue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors
                        .transparent, // supaya warna dari widget lainya tidak tertimpa
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      splashColor:
                          Colors.red, // untuk memberikan efek sentuh berwarna
                      child: Center(
                        child: Text(
                          'button buatan sendiri',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// inkWell merupakan widget untuk membuat button sendiri dan memberikan efek sentuhan.