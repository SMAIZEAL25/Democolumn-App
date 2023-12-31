import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: camel_case_types, must_be_immutable
class mybuttonwidget extends StatelessWidget {
  void Function(int)? onTabChange;
  mybuttonwidget({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: GNav(
          color: const Color.fromARGB(255, 184, 182, 182),
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade200,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 8,
          //onTabchange is a methods here
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ],
        ),
      ),
    );
  }
}
