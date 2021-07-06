import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Latihan 15 - Navigasi Multi Page Screen',
          style: TextStyle(fontSize: 17.5),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('LOGIN'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}
