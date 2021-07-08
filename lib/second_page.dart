import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Halaman Second Page'),
        ),
        body: Center(
          child: Hero(
            tag: 'contoh',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 250,
                  height: 250,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('images/img.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
