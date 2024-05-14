// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class UsernameTextField extends StatefulWidget {
  final String label;
  final controller;
  final hinttext;
  final obscuretext;
  final suffixIcon;

  const UsernameTextField({
    super.key,
    required this.label,
    required this.controller,
    this.hinttext,
    this.obscuretext,
    this.suffixIcon,
  });

  @override
  State<UsernameTextField> createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscuretext,
      decoration: InputDecoration(
        labelText: widget.label,
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: widget.hinttext,
        hintStyle: const TextStyle(color: Colors.black38),
        suffixIcon: widget.suffixIcon,
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
