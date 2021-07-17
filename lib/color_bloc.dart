import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// enum ColorEvent { to_amber, to_green }

// class ColorBloc extends Bloc<ColorEvent, Color> {
//   Color _color = Colors.amber;

//   @override
//   Color get initialState => Colors.amber;

//   @override
//   Stream<Color> mapEventToState(ColorEvent event) async* {
//     //mapEventToState berfungsi untuk memaping suatu state berdasarkan event
//     _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.green;
//     yield _color;
//   }
// }

//diatas contoh menggunakan  flutter_bloc / bloc sedangkan dibawah ddengan menggunakan hydrated_bloc

enum ColorEvent { to_amber, to_green }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  @override
  Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    //mapEventToState berfungsi untuk memaping suatu state berdasarkan event
    yield (event == ColorEvent.to_amber) ? Colors.amber : Colors.green;
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    //akan dipakai ketika aplikasi dijalankan dan dia akan meload data terakhir berupa json dan dia akan menyimpan perubahan terakhir dalam bentuk json dan akan memanggil method toJson
    try {
      return Color(json['color'] as int);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (_) {
      return null;
    }
  }
}
