import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutterfirebase/views/components/theme_mode_controller.dart';
// import 'package:flutterfirebase/views/components/theme_mode_controller.dart';
// import 'package:flutterfirebase/views/components/app_text.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                  child: CircleAvatar(
                foregroundImage: AssetImage("assets/png/splash.jpg"),
                radius: 50.0,
              )),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("HOME", style: TextStyle()),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: ListTile(
                  leading: const Icon(Icons.dark_mode_rounded),
                  title: const Text("ThemeMode", style: TextStyle()),
                  onTap: () => ThemeModeController,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LOGOUT", style: TextStyle()),
              onTap: () {
                Navigator.pop(context);

                signOutUser();
              },
            ),
          ),
        ],
      ),
    );
  }
}
