// latihan 2 - Text widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('latihan 2'),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 150, 
                child: Center(
                    child: Text(
                  "saya sedang melatih kemampuan flutter saya!",
                  // maxLines: 2,
                  // overflow: TextOverflow.fade,
                  // softWrap: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                      
                )))),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// untuk merefacor (merapihkan) kode yang terlalu panjang kita bisa menggunakan klik kanan pada kode yang panjang lalu pilih format document atau Shift+Alt+F atau bisa juga dengan menggunakan teknik tulis ulang titik koma (;)
// widget Center() berfungsi untuk menengahkan konten

// parameter :
// - maxLines berfungsi untuk memberi batas maksimal baris teks yang ditampilkan
// - overflow berfungsi untuk mengatur text yang sudah ditentukan batasnya, dan salah satu argumentnya yaitu TextOverflow.ellipsis berfungsi untuk memberi tanda ... untuk text yang melebihi batas, argument TextOverflow.clip untuk memaksa memotong teks yang melebihi batas, argument TextOverflow.fade untuk memberikan efek memudar pada teks yang melebihi batas
// - softwrap berfungsi untuk memberi wrap, jika argumentnya false maka teksnya tidak akan terwrap (terbungkus) dan akan memotong sesuai ukuran letak teksnya
// - textAlign berfungsi untuk mengatur tataletak teksnya, argumentnya: TextAlign.center berfungsi untuk menengahkan teks, TextAlign.right dan TextAlign.end untuk merata kanan-kan teks, TextAlign.left dan TextAlign.start untuk merata kriri-kan teks, TextAlign.justify untuk merata kanan-kiri kan teks,
// - style berfungsi untuk mengatur gaya/styling teks, Argument: widget TextStyle() untuk mewarnai teks menjadi putihdapat berisi beberapa argumen : TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500, fontSize: 15) untuk memberikan warna teks putih, jenis fontnya italic, ketebalan fontnya 500, ukuran fontnya 15
