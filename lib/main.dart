// Latihan 50 - Hydrated BLoC State Management

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_flutter_ku/color_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
          builder: (context) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.to_green);
            },
            backgroundColor: Colors.green,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Latihan 50 - Hydrated BLoC State Management',
          maxLines: 3,
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            width: 100,
            height: 100,
            color: currentColor,
            duration: Duration(milliseconds: 500),
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// BLoC (Bussiness Logic Component) State Management, pada kali ini kita menggunakan library dari flutter_bloc dan Hydrated_bloc untuk menyimpan perubahan terakhir dan memuat perubahan tersebut pada saat aplikasi dijalankan.
// jika project ini error saat dirun itu berarti Flutter SDKnya versi 2.x.x untuk mengatasinya anda perlu mendowngrade menjadi versi 1.x.x