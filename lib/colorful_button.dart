import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor; //membuat variable warna
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);
  ColorfulButton(this.mainColor, this.secondColor,
      this.iconData); //membuat constructor untuk dapat menampung nilai pada saat pemanggilannya
}

class _ColorfulButtonState extends State<ColorfulButton> {
  Color mainColor, secondColor; //membuat variable warna
  bool isPressed = false;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.secondColor,
      this.iconData); //membuat constructor untuk dapat menampung nilai
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi /
          4, // pi(nilai bilangan 3.14 radoam) merupakan nilai dari 180 derajat lalu dibagi 4 hingga menghasilkan 45 derajat. ini memerlukan import 'dart:math';
      child: GestureDetector(
        onTapDown: (detail) {
          //onTapDown merupakan suatu event yang terjadi ketika tombol sedang ditekan
          setState(() {
            isPressed = !isPressed; // akan mengembalikan true
          });
        },
        onTapUp: (detail) {
          // onTapUp merupakan suatu event yang terjadi ketika tombol sudah ditekan
          setState(() {
            isPressed = !isPressed; // akan mengembalikan false
          });
        },
        onTapCancel: () => setState(() {
          // onTapCancel merupakan suatu event yang terjadi ketika tombol batal ditekan (yaitu ketika menekan tombol lalu bergeser ke luar tombol)
          isPressed = !isPressed; // akan mengembalikan false
        }),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                15), //berguna untuk memotong clip dengan border radius
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(15),
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                      // Transform.translate berguna untuk memutar suatu objek
                      angle: -pi / 4,
                      child: Icon(
                        iconData,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  // Transform.translate berguna untuk merubah suatu posisi objek
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
