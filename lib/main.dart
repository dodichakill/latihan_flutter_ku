// Latihan 30 - Gradient Opacity (transparansi bergradasi)

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan 30 - Gradient Opacity'),
          ),
          body: Center(
            child: ShaderMask(
              shaderCallback: (rectangle) {
                return LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(
                    Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
                //berguna untuk membuat efek gradasi opacity linear dengan mask
              },
              blendMode:
                  BlendMode.dstIn, //untuk membuat gambarnya menyatu dengan mask
              child: Image(
                width: 300,
                image: AssetImage('images/img.jpg'),
              ),
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// Widget ShaderMask berguna untuk mengolah gambar menjadi masking dengan berbagai pilihan seperti membuatnya gradasi opacity seperti contoh diatas