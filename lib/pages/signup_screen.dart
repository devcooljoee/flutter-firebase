// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/app_text.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutterfirebase/views/components/container.dart';
import 'package:flutterfirebase/views/components/image_container.dart';
import 'package:flutterfirebase/views/components/password_textfield.dart';
import 'package:flutterfirebase/views/components/username_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //signInUSER
  void signUpUser() async {
    //loading circle
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        });

    //sign In
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              message,
              style: AppText.bodyText,
            ),
            backgroundColor: Colors.grey,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Spacer(),
                ImageContainer(
                  imagePath: "assets/png/splash.jpg",
                  height: 200,
                ),
                Text("Register With Us", style: AppText.mainText),
                Spacer(),
                UsernameTextField(
                  label: ("Email address"),
                  controller: emailController,
                  hinttext: "peter@gmail.com",
                  obscuretext: false,
                ),
                SizedBox(
                  height: 12,
                ),
                PasswordTextfield(
                  label: ("Password"),
                  controller: passwordController,
                ),
                SizedBox(height: 12),
                PasswordTextfield(
                  label: ("confirm Password"),
                  controller: confirmPasswordController,
                ),
                SizedBox(
                  height: 24,
                ),
                ContainerBox(
                  onTap: signUpUser,
                  hintText: 'Sign Up',
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade300,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Or continue with", style: AppText.bodyText),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade300,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        child:
                            ImageContainer(imagePath: "assets/png/google.png")),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        child: ImageContainer(
                            imagePath: "assets/png/facebook.png")),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Already a Member?", style: AppText.bodyText),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: Text("Login", style: AppText.subText),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
