// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/app_text.dart';
import 'package:flutterfirebase/views/components/container.dart';
import 'package:flutterfirebase/views/components/username_textfield.dart';

class ForgotPassowrd extends StatelessWidget {
  ForgotPassowrd({super.key});

  final usernameController = TextEditingController();
  void recoverPassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Spacer(),
                Text("Forgot Password", style: AppText.mainText),
                SizedBox(
                  height: 24,
                ),
                UsernameTextField(
                  label: ("Email"),
                  controller: usernameController,
                  hinttext: "Input Your email",
                  obscuretext: false,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    child: Text("<<< Go back", style: AppText.subText),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                  ),
                ),
                ContainerBox(
                  onTap: recoverPassword,
                  hintText: 'Next',
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
