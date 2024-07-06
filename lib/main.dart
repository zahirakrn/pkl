import 'package:flutter/material.dart';
import 'screens/about_screen.dart';
import 'screens/bola_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/about': (context) => AboutScreen(),
        '/home': (context) => HomeScreen(),
        '/bola': (context) => ListBolaScreen()
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 244, 157, 200),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
