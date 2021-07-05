// Latihan 13 - Spacer Widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 13 - Spacer Widget'),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // //dibawah ini merupakan contoh penggunaan spacer secara default yang hasilnya seperti MainAxisAlignment.spaceBetween
            // children: [
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.red,
            //   ),
            //   // Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.green,
            //   ),
            //   // Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.orange,
            //   ),

            // //dibawah ini merupakan contoh penggunaan spacer penggunaan spacer secara default yang hasilnya seperti MainAxisAlignment.spaceEvenly
            // children: [
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.red,
            //   ),
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.green,
            //   ),
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.orange,
            //   ),
            //   Spacer(),

            // //dibawah ini merupakan contoh penggunaan spacer secara default yang hasilnya seperti MainAxisAlignment.spaceAround
            // children: [
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.red,
            //   ),
            //   Spacer(),
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.green,
            //   ),
            //   Spacer(),
            //   Spacer(),
            //   Container(
            //     height: 80,
            //     width: 80,
            //     color: Colors.orange,
            //   ),
            //   Spacer(),

            //dibawah ini merupakan contoh penggunaan spacer dengan property flex yang hasilnya bisa kita custom sendiri
            children: [
              Spacer(
                flex: 1,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.orange,
              ),
              Spacer(
                flex: 4,
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
// widget Spacer berguna untuk membuat jarak antara widget.
// dan mempunyai property flex
// diatas merupakan contoh penggunaanya.
