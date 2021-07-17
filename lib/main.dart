// Latihan 49 - SelectableText, ToggleButtons, ColorFiltered

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [
    true, //ini nilai toggle button pertama
    false, //ini nilai toggle button ke2
    false //ini nilai toggle button ke3
  ]; // ini adalah variable yang digunakan pada property isSelected ToggleButtons yang pertama

  List<bool> isSelected2 = [
    true, //ini nilai toggle button pertama
    false, //ini nilai toggle button ke2
    false, //ini nilai toggle button ke3
    false, //ini nilai toggle button ke4
    false, //ini nilai toggle button ke5
  ]; // ini adalah variable yang digunakan pada property isSelected ToggleButtons yang kedua

  String myMode = 'default';

  ColorFilter colorFilter = ColorFilter.mode(Colors.orange, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 49 - SelectTableText, ToggleButtons, ColorFiltered',
            maxLines: 3,
            style: TextStyle(fontSize: 12),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ini bukan selectable text. jadi gak bisa diselect',
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ), //ini digunakan hanya untuk memberi jarak vertikal
              SelectableText(
                'ini adalah selectable text. silahkan select saya.. ya dengan cara tekan tulisan ini okey :)',
                style: TextStyle(fontSize: 20),
                // dibawah ini merupakan property khusus yang bisa ditambahkan
                showCursor: true, //mengaktifkan penunjuk cursor pada text
                cursorWidth: 2, //ketebalan cursornya
                cursorColor: Colors.blue, //warna cursornya
                cursorHeight: 5, //ukuran tinggi cursor
                cursorRadius:
                    Radius.circular(10), //memberikan radius pada cursor
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.adb),
                  Icon(Icons.analytics),
                  Icon(Icons.dangerous),
                ],
                isSelected: isSelected,
                onPressed: (index) {
                  setState(() {
                    // dibawah ini akan menghasilkan warna pada semua tombol yang ditekan
                    // isSelected[index] = !isSelected[index];

                    // dibawah ini akan menghasilkan warna pada salah satu tombol yang ditekan
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = (i == index) ? true : false;
                    }
                  });
                },

                // dibawah ini beberapa property khusus yang ada di ToggleButtons
                fillColor:
                    Colors.green, //memberikan warna pada tombol yang dipilih
                selectedColor:
                    Colors.amber, //memberikan warna pada isi elemen tombol
                splashColor: Colors
                    .blue, //memberikan warna splash/kilat pada saat tombol diklik
                highlightColor: Colors
                    .purple, //memberikan warna background pada saat tombol diklik
                borderRadius: BorderRadius.circular(
                    10), //memberikan border radius pada tombol
                borderColor: Colors.purple, //memberikan warna pada border
                borderWidth: 2, //memberikan ketebalan border
                selectedBorderColor: Colors
                    .amber, //memberikan warna border pada tombol yang dipilih
                color: Colors
                    .blue, //memberikan warna pada setiap isi elemen tombolnya
                direction: Axis
                    .vertical, //memberikan arah tombol (horizontal/vertikal)
              ),
              SizedBox(
                height: 25,
              ),
              ColorFiltered(
                colorFilter: colorFilter,
                child: Container(
                  height: 170,
                  width: 170,
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      'ini adalah contoh hasil dari penggunaan ColorFiltered dari mode $myMode ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.baby_changing_station),
                  Icon(Icons.access_alarm),
                  Icon(Icons.cabin),
                  Icon(Icons.close),
                ],
                isSelected: isSelected2,
                onPressed: (index) {
                  setState(() {
                    if (index == 0) {
                      colorFilter = ColorFilter.mode(
                          Colors.blue, BlendMode.screen); //mode screen
                      myMode = 'Screen';
                    } else if (index == 1) {
                      colorFilter = ColorFilter.mode(
                          Colors.green, BlendMode.softLight); //mode softlight

                      myMode = 'softlight';
                    } else if (index == 2) {
                      colorFilter = ColorFilter.mode(
                          Colors.amber, BlendMode.multiply); //mode multiply
                      myMode = 'multiply';
                    } else if (index == 3) {
                      colorFilter = ColorFilter.mode(
                          Colors.blue, BlendMode.exclusion); //mode exclusion
                      myMode = 'exclusion';
                    } else {
                      colorFilter = ColorFilter.mode(
                          Colors.blue, BlendMode.clear); //menghapus tampilan
                      myMode = 'Screen';
                    }

                    for (int i = 0; i < isSelected2.length; i++) {
                      isSelected2[i] = (i == index) ? true : false;
                    }
                  });
                },
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
// selectTableText merupakan widget yang berguna untuk menjadikan text yang bisa diselect/pilih
// ToggleButtons merupakan widget yang berguna untuk membuat sebuah tombol 'toggle'
//ColorFiltered merupakan widget yang berguna untuk membuat filter warna pada pembungkus/childdrennya
//diatas merupakan penjelasan lanjutannya  