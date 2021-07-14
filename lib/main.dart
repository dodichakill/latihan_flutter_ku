// Latihan 45 - Doc Comment

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: 'nama saya dodi',
    role: 'programmer sukses dunia akhirat',
    imgURL: 'images/img.jpg',
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 45 - Doc Comment'),
        ),
        body: Center(
          child: profile,
        ),
      ),
    );
  }
}

/// Class UserProfile digunakan untuk menampilkan user ke layar dengan sempurna
class UserProfile extends StatelessWidget {
  /// field ini digunakan untuk menyimpan nama user
  final String name;

  /// field ini digunakan untuk menyimpan role user
  final String role;

  /// field ini digunakan untuk menyimpan URL foto user
  final String imgURL;

  /// [name] berisi **nama user**. *Nilai defaultnya* adalah `No Name`
  ///
  /// [role] berisi **role user**. *Nilai defaultnya* adalah `No Role`
  ///
  /// [imgUrl] berisi URL gambar foto user. URL ini menggunakan assets offline
  ///
  /// contoh:
  ///
  /// ```
  /// UserProfile(name:'dodi', role:'programmer sukses dunia akhirat', imgURL:'images/img.jpg');
  ///
  ///
  /// ```
  UserProfile({this.name = 'No Name', this.role = 'No Role', this.imgURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          child: Image(
            image: AssetImage(
                (imgURL != null) ? imgURL : 'images/texture-kayu.jpg'),
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(role)
      ],
    );
  }
}

// penjelasan singkat
// ----------------
// pada materi kali ini kita akan belajar macam macam jenis doc comment (komentar dokumentasi) yang berguna untuk mengkomunikasikan kode kita kepada orang lain agar mudah dipahami. dan jika kita arahkan cursor pada suatu kodingan baik function/method/class atau lainya akan memunculkan suatu keterangan
// tulis /// untuk memulai membuat doc comment / komentar dokumentasi
// bungkus dengan * untuk membuat teksnya menjadi italic
// bungkus dengan ** untuk membuat teksnya menjadi bold
// bungkus dengan [ dan diakhiri ] untuk membuat teksnya menjadi menonjol
// untuk membuat contoh kode bungkus dengan ``` pada awal dan akhir doc commentnya
// untuk lihat bestpractice-nya bisa baca di artikel ini  https://dart.dev/guides/language/effective-dart/documentation