import 'package:flutter/material.dart';
import 'package:flutterfirebase/pages/chat_screen.dart';
import 'package:flutterfirebase/pages/forgot.dart';
import 'package:flutterfirebase/pages/login_page.dart';
import 'package:flutterfirebase/pages/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: LoginScreen(),
        routes: {
          '/login': (context) => LoginScreen(),
          '/register': (context) => SignupScreen(),
          '/forgot': (context) => ForgotPassowrd(),
          '/chatscreen': (context) => const ChatScreen(),
        });
  }
}
