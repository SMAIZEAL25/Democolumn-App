import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  const Mytextfield(
      {super.key,
      required this.controller,
      required this.obscuretext,
      required this.hintText});
  final controller;
  final bool obscuretext;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            fillColor: const Color.fromARGB(255, 230, 229, 229),
            filled: true,
            hintText: hintText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(169, 104, 117, 114))),
      ),
    );
  }
}
