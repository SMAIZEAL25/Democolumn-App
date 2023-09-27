import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu), // Leading icon
        title: Center(
          child: Stack(
            children: [
              Positioned(
                // first image inside the appbar
                child: Image.asset('images/Rectangle.jpg'),
              ),
              Positioned(
                // second image inside the appbar
                child: Image.asset('images/Ear_phone.jpg'),
              ),
            ],
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.search), // Another icon on the right side
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              child: const Text('First Expanded',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Text('Second Expanded',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
