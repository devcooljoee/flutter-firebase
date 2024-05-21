// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final int? height;
  const ImageContainer({super.key, required this.imagePath, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        imagePath,
        height: 60,
      ),
    );
  }
}
