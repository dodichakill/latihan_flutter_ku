// Latihan 47 - Custom progress bar (Timer + Provider)

import 'dart:async';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 47 - Custom progress bar (Timer + Providere)',
            maxLines: 3,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            builder: (context) => TimeState(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    width: 200,
                    value: timeState.time,
                    // totalValue: 100,
                    totalValue: 15, //karena mengikuti timenya
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Consumer<TimeState>(
                    builder: (context, timeState, _) => ElevatedButton(
                        onPressed: () {
                          Timer.periodic(Duration(seconds: 1), (timer) {
                            if (timeState.time == 0) {
                              timer.cancel();
                            } else {
                              timeState.time -= 1;
                            }
                          });
                        },
                        child: Text('Start')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  CustomProgressBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.timer,
          color: Colors.grey[700],
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                height: 10,
                width: width * ratio,
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    color: (ratio < 0.3)
                        ? Colors.red
                        : (ratio < 0.6)
                            ? Colors.orange
                            : (ratio < 0.8)
                                ? Colors.yellow
                                : (ratio == 100)
                                    ? Colors.green[900]
                                    : Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class TimeState with ChangeNotifier {
  int _time = 15; //waktunya 15 detik

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}


// penjelasan singkat
// ----------------
// di materi kali ini kita menerapkan implementasi dari timer dan provider
// jika kita gagal merun project ini itu karena flutter sdk kita menggunakan versi 2.x.x untuk mengatasinya bisa di downgrade ke flutter 1.x.x