// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  final controller;
  final hinttext;
  final String label;

  const PasswordTextfield(
      {super.key,
      required this.controller,
      this.hinttext,
      required this.label});

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool obscurePassword = false;

  @override
  @override
  void initState() {
    super.initState();
    obscurePassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: obscurePassword,
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
            icon: Icon(obscurePassword
                ? Icons.visibility_rounded
                : Icons.visibility_off_outlined)),
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: widget.hinttext,
        hintStyle: const TextStyle(color: Colors.black38),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
