import 'package:flutter/material.dart';

class AppBarSettings extends StatelessWidget {
  final String appbarTitle;
  final Icon? appbarActions;
  const AppBarSettings(
      {super.key, required this.appbarTitle, this.appbarActions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        actions: const [],
      ),
    );
  }
}
