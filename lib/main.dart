// Latihan 44 - BLoC State Management (flutter_bloc package)
// tutorial dibawah ini tanpa library (BLoC plain)

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_flutter_ku/color_bloc.dart';

void main() => runApp(MyApp());

// dibawah ini contoh tanpa penerapan Bloc State management

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {},
//             backgroundColor: Colors.amber,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           FloatingActionButton(
//             onPressed: () {},
//             backgroundColor: Colors.green,
//           ),
//         ],
//       ),
//       appBar: AppBar(
//         title:
//             Text('Latihan 44 - BLoC State Management (flutter_bloc package)'),
//       ),
//       body: Center(
//         child: AnimatedContainer(
//           width: 100,
//           height: 100,
//           color: Colors.amber,
//           duration: Duration(milliseconds: 500),
//         ),
//       ),
//     );
//   }
// }

// dibawah ini contoh dengan penerapan Bloc State management

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
          'Latihan 44 - BLoC State Management (flutter_bloc package)',
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
// BLoC (Bussiness Logic Component) State Management, pada kali ini kita menggunakan library dari flutter_bloc dan pastikan itu sudah terdaftar pada pubspec.yaml
// jika project ini error saat dirun itu berarti Flutter SDKnya versi 2.x.x untuk mengatasinya anda perlu mendowngrade menjadi versi 1.x.x