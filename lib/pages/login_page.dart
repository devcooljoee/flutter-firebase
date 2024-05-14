// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/app_text.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutterfirebase/views/components/container.dart';
import 'package:flutterfirebase/views/components/image_container.dart';
import 'package:flutterfirebase/views/components/password_textfield.dart';
import 'package:flutterfirebase/views/components/username_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //signInUSER
  void signInUser() {}

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
                Icon(
                  Icons.lock,
                  size: 60,
                ),
                Text("Welcome", style: AppText.mainText),
                Spacer(),
                UsernameTextField(
                  label: ("Email address"),
                  controller: usernameController,
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
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/forgot');
                      },
                      child: Text("forgot password?", style: AppText.subText),
                    )),
                SizedBox(
                  height: 24,
                ),
                ContainerBox(
                  // onTap: signInUser,
                  onTap: () {
                    Navigator.of(context).pushNamed('/chatscreen');
                  },
                  hintText: 'Sign In',
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
                    Text("New Member?", style: AppText.bodyText),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register');
                      },
                      child: Text("Register", style: AppText.subText),
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
