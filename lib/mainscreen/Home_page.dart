// ignore_for_file: file_names

import 'package:democolumn_app/component/mybuttonwidget.dart';
import 'package:democolumn_app/mainscreen/Cartpage.dart';
import 'package:democolumn_app/mainscreen/ShopPage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customerscreen extends StatefulWidget {
  const customerscreen({super.key});

  @override
  State<customerscreen> createState() => _customerscreenState();
}

// ignore: camel_case_types
class _customerscreenState extends State<customerscreen> {
  // this selected index is control by the nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  // when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _page = [
    // shop page
    const ShopPage(),
    // cart pages
    const Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: mybuttonwidget(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            color: Colors.black,
            icon: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.menu),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'image/Nikelogo.png',
                    color: Colors.white,
                  ),
                ),
                // this is just a single lines
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                //here is the leading icons in the appbar drawer and it's properties
                //listtile of home
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                //listtile of about page and leading icons
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            //logout
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      //the body now hold the page and the selected index controlled by the nav bar
      body: _page[_selectedIndex],
    );
  }
}
