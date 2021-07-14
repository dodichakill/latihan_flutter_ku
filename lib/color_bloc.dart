import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_green }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    //mapEventToState berfungsi untuk memaping suatu state berdasarkan event
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.green;
    yield _color;
  }
}

//dengan menggunakan package bloc kita bisa menuliskan kodenya lebih ringkas seperti diatas