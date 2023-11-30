import 'package:democolumn_app/Splashscreen/splach_screen.dart';
import 'package:democolumn_app/mainscreen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const WelcomeScreen(),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const Splashscreen(),
      },
    );
  }
}
