// Latihan 26 - TabBar, TabBarView widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Latihan 26 - TabBar, TabBarView widget',
              style: TextStyle(fontSize: 15.5),
            ),
            bottom: TabBar(
              //untuk memberikan tombol pada app bar
              tabs: [
                //berisi beberapa tab dan isi dari tabnya bebas
                Tab(
                  icon: Icon(Icons.album_rounded),
                  text: ('album'),
                ),
                Tab(
                  child: Image(
                    image: AssetImage('images/fb.png'),
                  ),
                ),
                Tab(icon: Icon(Icons.computer)),
                Tab(
                  child: Text('News'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            //untuk menambahkan data pada setiap tab dan dapat langsung dilihat
            children: [
              Center(
                child: Text('isi data dari tab 1'),
              ),
              Center(
                child: Text('isi data dari tab 2'),
              ),
              Center(
                child: Text('isi data dari tab 3'),
              ),
              Center(
                child: Text('isi data dari tab 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// ada di kodenya
