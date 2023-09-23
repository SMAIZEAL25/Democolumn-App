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
        title: Expanded(
          child: Center(
            child: Image.asset('your_image.png'), // Your image goes here
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
      body: const Center(
        child: Text('Your content goes here'),
      ),
    );
  }
}
