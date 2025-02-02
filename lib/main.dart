import 'package:democolumn_app/Splashscreen/splach_screen.dart';
// import 'package:democolumn_app/component/mybuttonwidget.dart';
import 'package:democolumn_app/mainscreen/Home_page.dart';
import 'package:democolumn_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: const WelcomeScreen(),
        initialRoute: '/customerscreen',
        routes: {
          '/customerscreen': (context) => const customerscreen(),
          '/splashscreen': (context) => const Splashscreen(),
        },
      ),
    );
  }
}
