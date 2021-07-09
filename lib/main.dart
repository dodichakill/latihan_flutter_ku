// Latihan 31 - Playing music (memainkan musik)

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = '00:00:00';
  AudioPlayer audioPlayer;

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan 31 - Playing music'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      playSound(
                          'http://stream.ca.morow.com:8000/morow_med.mp3');
                    },
                    child: Text('play')),
                ElevatedButton(
                    onPressed: () {
                      pauseSound();
                    },
                    child: Text('pause')),
                ElevatedButton(
                    onPressed: () {
                      resumeSound();
                    },
                    child: Text('resume')),
                ElevatedButton(
                    onPressed: () {
                      stopSound();
                    },
                    child: Text('stop')),
                Text(
                  durasi,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// audioplayers: ^0.13.0