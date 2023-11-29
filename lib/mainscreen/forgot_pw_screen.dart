import 'package:democolumn_app/mainscreen/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordpage();
}

class _forgotpasswordpage extends State<forgotpassword> {
  final _emialcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Enter your Email address here',
              textAlign: TextAlign.center,
              style: GoogleFonts.aclonica(color: Colors.black, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(17),
              child: TextField(
                controller: _emialcontroller,
                decoration: textFormField.copyWith(
                  prefixIcon: const Icon(Icons.person),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            child: const Text(
              'Reset password',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
