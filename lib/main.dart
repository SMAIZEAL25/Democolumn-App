import 'package:flutter/material.dart';
import 'package:democolumn_app/gallary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "HOME",
                  icon: Icon(Icons.home), backgroundColor: Colors.green),
              BottomNavigationBarItem(
                label: "Search",
                  icon: Icon(Icons.search), backgroundColor: Colors.yellow),
              BottomNavigationBarItem(
                label: "Person",
                icon: Icon(Icons.person),
                backgroundColor: Colors.blue,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
        body: Column(
          children: [
            Image.asset('images/car.jpeg'),
            const Expanded(child: Foxaixs()),
            // const SizedBox(child: Floatbutton()),
          ],
        ),
      ),
    );
  }
}

class Foxaixs extends StatelessWidget {
  const Foxaixs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'item $index',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                );
              }),
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'item $index',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ));
              }),
        ),
      ],
    );
  }
}

class Floatbutton extends StatelessWidget {
  const Floatbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const FloatingActionButton(
              onPressed: null,
              backgroundColor: Colors.black,
              tooltip: 'increment Counter',
              child: Icon(Icons.shop_2)),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ],
            onTap: (int index) {},
            selectedItemColor: Colors.orangeAccent,
          )),
    );
  }
}
