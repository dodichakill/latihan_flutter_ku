// Latihan 14 - Widget : Draggable, DragTarget, SizedBox, Material

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color color3 = Colors.yellow;

  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Latihan 14 - Widget : Draggable, DragTarget, SizedBox, Material',
              style: TextStyle(fontSize: 11.5),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color2,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: color3,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color3,
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey.withOpacity(0.5),
                        shape: StadiumBorder(),
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color3.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 6,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 140,
                          height: 120,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                            elevation: 6,
                          ),
                        )
                      : SizedBox(
                          width: 140,
                          height: 120,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                            elevation: 6,
                          ),
                        );
                },
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
              )
            ],
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// widget SizedBox berfungsi untuk membungkus dan memberikan ukuran tinggi dan lebar untuk widget yang tidak mempunyai property weight dan height.
// widget material mempunyai sebuah property color, shape: StadiumBorder() yang berguna untuk memberikan border radius 50%, juga mempunyai properti elevation yang berfungsi ketinggian untuk memberikan efek shadow
// Dragable adalah widget yang dapat di drag, mempunyai tipe data tergantung apa yang ingin dikembalikan, dan mempunyai properti data yang berfungsi untuk mengirimkan data yang telah diberikan tersebut untuk dikirim ke widget DataTarget untuk diproses datanya. Dragable juga mempunyai property childWhenDragging yang berguna untuk memproses apa yang akan dilakukan jika widgetnya di drag maka akan melakukan suatu tugas, dan juga memiliki property feedback yang berfungsi untuk melakukan tugas jika widgetnya sedang didrag.
// DataTarget merupakan widget yang berfungsi untuk menerima data dan mengolahnya dari widget Dragable, mempunyai property builder: (context, candidates, rejected) {...} yang berguna untuk mengolah data, onWillAccept: (value) => true; yang berguna untuk membuat persetujuan akan menerima proses jika data diterima, dan property onAccept yang berfungsi untuk mengolah jika data itu sudah benar-benar diterima