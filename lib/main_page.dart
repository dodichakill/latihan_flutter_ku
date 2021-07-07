import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 22 - Opacity widget (Custom Card)',
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('images/textures.png'),
                                    fit: BoxFit.cover)),
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            image: DecorationImage(
                                image: AssetImage('images/img.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            52 + MediaQuery.of(context).size.height * 0.35,
                            20,
                            30),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Calon Programmer Sukses Dunia Akhirat",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF56D5D),
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 22, 0, 17),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Diunggah pada  ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "7 Juli 2021",
                                      style: TextStyle(
                                        color: Color(0xFFF56D5D),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '999k',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 5,
                                  ),
                                  Icon(
                                    Icons.comment,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '9127',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
