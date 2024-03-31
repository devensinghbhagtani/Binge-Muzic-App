import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/Pages/demopage.dart';
import 'package:songz/Pages/playsongpage.dart';
import 'package:songz/Pages/song_page.dart';
// import 'package:songz/Pages/splashscreen.dart';
import 'package:songz/config/theme.dart';
import 'package:songz/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showSemanticsDebugger: false,
      title: 'Muzic Player',
      theme: darkTheme,
      home: const SongPage(),
      // home: const DemoPage(),
    );
  }
}
