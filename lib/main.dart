// Latihan 34 - ClipPath

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 34 - ClipPath'),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              image: AssetImage('images/img2.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // disini kita custom clipnya
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// penjelasan singkat
// ----------------
// diatas merupakan contoh cara penggunannya dan penjelesananya