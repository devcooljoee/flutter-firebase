import 'package:flutter/material.dart';
import 'package:flutterfirebase/pages/auth_page.dart';

import 'package:flutterfirebase/views/components/image_container.dart';

class SplashScreenState extends StatefulWidget {
  const SplashScreenState({super.key});

  @override
  State<SplashScreenState> createState() => _SplashScreenStateState();
}

class _SplashScreenStateState extends State<SplashScreenState> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (contextx) => const AuthPage()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageContainer(
              imagePath: "assets/png/splash.jpg",
              height: 100,
            ),
            SizedBox(height: 24),
            Text("ChatNow", style: TextStyle()),
          ],
        ),
      ),
    );
  }
}
