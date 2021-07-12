// Latihan 41 - Provider State Management

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:latihan_flutter_ku/application_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<ApplicationColor>(
      builder: (context) =>
          ApplicationColor(), // ini udah deprecated diaganti dengan dibawah ini (untuk sdk flutter versi 2.x.x)
      // create: (BuildContext context) => ApplicationColor(),

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, applicationColor, _) =>
                Text('Latihan 41 - Provider State Management',
                    style: TextStyle(
                      color: applicationColor.color,
                      fontSize: 18,
                    )),
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(5),
                      color: applicationColor.color,
                      duration: Duration(milliseconds: 500)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.all(5), child: Text('LG')),
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Switch(
                            value: applicationColor.isLightBlue,
                            onChanged: (newValue) {
                              applicationColor.isLightBlue = newValue;
                            })),
                    Container(margin: EdgeInsets.all(5), child: Text('LB')),
                  ],
                )
              ]),
        ),
      ),
    ));

    //   return MaterialApp(
    //     home: Scaffold(
    //       body: Center(
    //         child: Text('tes'),
    //       ),
    //     ),
    //   );
  }
}

// penjelasan singkat
// ----------------
// Provider State Management berguna untuk mengatur provider state (perubahan nilai pada widget tertentu saja dan nilai tersebut tersimpan di dalam shared state, shared state perlu mengimplement Change Notifier supaya ia dapat memberitahu pada element yang membutuhkan statenya) yang mempunyai ChangeNotifierProvider widget yang berguna untuk menyediakan objek dari shared state (instance). dan pada elemen/widget yang perlu berubah sesuai statenya harus di bungkus dengan widget Consumer yang berfungsi menandakan bahwa widget tersebut perlu diberitahu jika terjadi perubahan state yang bersangkutan. hal ini lebih efisien dari pada menggunakan setState() yang meredraw ulang seluruh komponen
// sebelum menggunakannya pastikan provider sudah terdaftar pada pubspec.yaml
// diatas merupakan contoh penerapannya
// jika gagal dibuild itu karena versi sdk flutter ini menggunakan flutter versi 2.x.x , cobalah mengubah/downgrade/download ulang flutternya menjadi flutter versi 1.x.x