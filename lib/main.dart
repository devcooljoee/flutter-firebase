import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebase/firebase_options.dart';

import 'package:flutterfirebase/pages/chat_screen.dart';
import 'package:flutterfirebase/pages/forgot.dart';
import 'package:flutterfirebase/pages/login_page.dart';
import 'package:flutterfirebase/pages/signup_screen.dart';
import 'package:flutterfirebase/views/components/splash_screen.dart';
import 'package:flutterfirebase/views/theme/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        theme: lightMode,
        darkTheme: darkMode,
        home: const SplashScreenState(),
        routes: {
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const SignUpScreen(),
          '/forgot': (context) => ForgotPassowrd(),
          '/chatscreen': (context) => const ChatScreen(),
        });
  }
}
