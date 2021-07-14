// Latihan 46 - Timer

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool isBlack = true;
  bool isStop = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 46 - Timer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: (isBlack) ? Colors.black : Colors.red),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Timer(Duration(seconds: 5), () {
                      // ini akan menjalankan perintahnya setelah 5 detik
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                  child: Text('Ubah warna 5 detik kemudian')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Timer.run(() {
                      //method run berfungsi untuk menjalankan perubahan secara langsung
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                  child: Text('Ubah warna secara langsung')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    counter = 0;
                    isStop = false;
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (isStop) {
                        timer
                            .cancel(); // akan membatalkan timer dan akan menghentikan proses timer
                      }
                      setState(() {
                        counter++;
                      });
                    });
                  },
                  child: Text('Start Timer')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    isStop = true; // akan menghentikan timer
                  },
                  child: Text('Stop Timer')),
            ],
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// pada materi kali ini kita akan belajar Timer yaitu widget waktu yang bisa kita gunakan.