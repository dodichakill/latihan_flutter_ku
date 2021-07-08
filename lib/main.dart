// Latihan 24 - Hero, ClipRRect widget

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/main_page.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //menghilangkan banner debug
        home: MainPage());
  }
}
// penjelasan singkat
// ----------------
// ada di kodenya