import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu), // Leading icon

        actions: [
          IconButton(
            icon: const Icon(Icons.search), // Another icon on the right side
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('images/Rectangle.jpg')),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      height: 100, child: Image.asset('images/Ear_phone.jpg')),
                ),
                // Positioned(
                //   // first image inside the appbar
                //   child: Image.asset('images/Rectangle.jpg'),
                // ),
                // Positioned(
                //   // second image inside the appbar
                //   child: Image.asset('images/Ear_phone.jpg'),
                // ),
              ],
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
      ),
    );
  }
}
