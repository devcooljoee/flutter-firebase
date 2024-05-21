import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/app_text.dart';
import 'package:flutterfirebase/views/components/container.dart';
import 'package:flutterfirebase/views/components/image_container.dart';
import 'package:flutterfirebase/views/components/password_textfield.dart';
import 'package:flutterfirebase/views/components/username_textfield.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

void signUpUser() {}

class _SignupScreenState extends State<SignupScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
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
                const Spacer(),
                const Icon(
                  Icons.handshake,
                  size: 60,
                ),
                const Text("Register", style: AppText.mainText),
                const Spacer(),
                UsernameTextField(
                  label: ("FullName"),
                  controller: usernameController,
                  hinttext: "Osunfisan Peter",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 12,
                ),
                UsernameTextField(
                  label: ("Email adress"),
                  controller: usernameController,
                  hinttext: "peter@gmail.com",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 12,
                ),
                PasswordTextfield(
                  label: ("Password"),
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 24,
                ),
                const ContainerBox(
                  onTap: signUpUser,
                  // onTap: () {
                  // Navigator.of(context).pushNamed('/login');
                  // },
                  hintText: 'Sign Up',
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.8,
                      color: Colors.grey.shade800,
                    )),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Or Sign Up With", style: AppText.bodyText),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.8,
                      color: Colors.grey.shade800,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        child: const ImageContainer(
                            imagePath: "assets/png/google.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        child: const ImageContainer(
                            imagePath: "assets/png/facebook.png")),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text("Already a Member?", style: AppText.bodyText),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: const Text("Login", style: AppText.subText),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
