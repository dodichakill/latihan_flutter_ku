// Latihan 23 - Positioned, FloatingActionButton widget

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_flutter_ku/main_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
      (_) => runApp(MyApp())); //untuk mencegah aplikasi berorientasi landscape
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //menghilangkan banner debug
        home: MainPage());
  }
}
// penjelasan singkat
// ----------------
// ada di kodenya