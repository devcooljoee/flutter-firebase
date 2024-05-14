// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final Function()? onTap;
  final String hintText;
  const ContainerBox({super.key, required this.onTap, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: Center(
            child: Text(hintText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
