// ignore_for_file: file_names

import 'package:democolumn_app/component/mybuttonwidget.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customerscreen extends StatefulWidget {
  const customerscreen({super.key});

  @override
  State<customerscreen> createState() => _customerscreenState();
}

// ignore: camel_case_types
class _customerscreenState extends State<customerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: mybuttonwidgetState(
        onTabChange: (index) {},
      ),
    );
  }
}
