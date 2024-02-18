import 'package:flutter/material.dart';
import 'package:songz/Pages/playsongpage.dart';
import 'package:songz/Pages/song_page.dart';
// import 'package:songz/Pages/splashscreen.dart';
import 'package:songz/config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Muzic Player',
      theme: darkTheme,
      home: const PlaySong(),
    );
  }
}
