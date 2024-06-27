import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: TextField(
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(hintText.toString(), style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary
            )
          )
        ),
      ),
    );
  }
}
