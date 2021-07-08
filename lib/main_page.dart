import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Latihan 23 - Positioned, FloatingActionButton widget',
            style: TextStyle(fontSize: 12),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              // positioned berfungsi untuk memberikan custom posisi
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, // untuk memberikan shape bulat
                    gradient: LinearGradient(
                        colors: [Colors.purpleAccent, Colors.blue[400]],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              // positioned berfungsi untuk memberikan custom posisi
              left: -getBigDiameter(context) / 4,
              top: -getBigDiameter(context) / 4,
              child: Container(
                child: Center(
                  child: Text(
                    'Dribble',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, // untuk memberikan shape bulat
                    gradient: LinearGradient(
                        colors: [Colors.purpleAccent, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              // positioned berfungsi untuk memberikan custom posisi
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // untuk memberikan shape bulat
                  color: Colors.grey[300],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Color(0xFFFF4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFF4891))),
                              labelText: 'Email :',
                              labelStyle: TextStyle(color: Color(0xFFFF4891))),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xFFFF4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFF4891))),
                              labelText: 'Password :',
                              labelStyle: TextStyle(color: Color(0xFFFF4891))),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text(
                        'FORGOT PASSWORD?',
                        style:
                            TextStyle(color: Color(0xFFFF4891), fontSize: 11),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 40,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.lightBlue,
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [Colors.purpleAccent, Colors.blue],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                        ),
                        FloatingActionButton(
                          // berguna untuk membuat button yang melayang
                          elevation: 0,
                          mini: true, // supaya ukurannya diperkecil
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('images/fb.png'),
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0,
                          mini: true,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('images/gl.png'),
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0,
                          mini: true,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('images/tw.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "DON'T HAVE AN ACCOUNT? ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Color(0xFFFF4891),
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
