import 'package:flutter/material.dart';
import 'package:vinove/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  static const String mapboxAccessToken = 'pk.eyJ1IjoieWFzaGd1cHRhMjFjc2UiLCJhIjoiY201bjM0ZGE0MDZudDJrc2N0NTl3MDVvaSJ9.hJBSCB0OL83JFj_3SYa7nQ';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const home(),
    );
  }
}
