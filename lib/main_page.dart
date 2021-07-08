import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Latihan 24 - Hero, ClipRRect widget',
            style: TextStyle(fontSize: 14),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
          // berikut merupakan tanpa animasi default(saat ditekan)
          // child: ClipRRect(
          //   // berfungsi untuk membuat kotak yang dapat di rounded/bulatkan/radius
          //   borderRadius: BorderRadius.circular(75),
          //   child: Container(
          //     width: 150,
          //     height: 150,
          //     child: Image(
          //       fit: BoxFit.cover,
          //       image: AssetImage('images/img.jpg'),
          //     ),
          //   ),
          // ),

          // berikut animasi versi custom/hero (yaitu animasi yang seolah timbul/keluar dari objeknya)
          child: Hero(
            // hero berfungsi untuk memberikan animasi transisi pada objek
            tag:
                'contoh', // tag berfungsi sebagai penanda untuk objek yang akan dianimasikan (nama tagnya harus sama dengan tag objeknya)
            child: ClipRRect(
              // berfungsi untuk membuat kotak yang dapat di rounded/bulatkan/radius
              borderRadius: BorderRadius.circular(75),
              child: Container(
                width: 150,
                height: 150,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('images/texture-kayu.jpg'),
                ),
              ),
            ),
          ),
        ));
  }
}
