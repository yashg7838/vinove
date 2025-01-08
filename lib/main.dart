import 'package:flutter/material.dart';
import 'package:vinove/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  static const String mapboxAccessToken = 'sk.eyJ1IjoieWFzaGd1cHRhMjFjc2UiLCJhIjoiY201bmk5ZjVpMGJkMjJtczl6M2ZrcjI5NyJ9.Wv9lJF3oweFZuCzhCdz2rg';
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
