// Latihan 28 - menampilkan QR code

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 28 - menampilkan QR code'),
        ),
        body: Center(
          child: QrImage(
            version:
                6, //defaultnya 4 (pelajari tentang version : www.qrcode.com/en/about/version.html)
            backgroundColor: Colors.grey[300], //warna latar belakang
            foregroundColor: Colors.black, //warna latar depan (balok2)
            errorCorrectionLevel:
                QrErrorCorrectLevel.M, //tingkat level koreksi error
            padding: EdgeInsets.all(15), //menambakan padding
            size: 300, //ukuranya w:300 h:300
            data:
                'https://buildtwithangga.com/', // data (link) yang bisa kita isi
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// untuk menggunakan QR code kita harus menginstallnya di pubspec.yaml dengan ketik qr_flutter dan menuliskan versinya (lihat saja pada berkas pubspec.yaml)
// untuk penjelasan lainya ada di kode diatas
