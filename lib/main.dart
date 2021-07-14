// Latihan 43 - BLoC State Management (Sream Controller & Stream Builder)
// tutorial dibawah ini tanpa library (BLoC plain)

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/color_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.to_amber);
                }),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.to_light_blue);
                }),
          ],
        ),
        appBar: AppBar(
          title: Text(
            'Latihan 43 - BLoC State Management (Sream Controller & Stream Builder)',
            maxLines: 3,
            style: TextStyle(fontSize: 13),
          ),
        ),
        body: Center(
            child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.amber,
          builder: (context, snapshot) {
            return AnimatedContainer(
              width: 100,
              height: 100,
              color: snapshot.data,
              duration: Duration(milliseconds: 500),
            );
          },
        )),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// BLoC (Bussiness Logic Component) State Management 
// diatas merupakan contoh penerapannya secara plain/native (tanpa library)