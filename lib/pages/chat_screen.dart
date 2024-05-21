import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/app_text.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  void signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats", style: AppText.mainText),
        actions: [
          IconButton(
            onPressed: signOutUser,
            icon: const Icon(Icons.logout),
            iconSize: 24.0,
            color: Colors.black,
          )
        ],
        leading: IconButton(
            onPressed: () {
              return Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.sort_rounded)),
      ),
      body: const ListTile(),
    );
  }
}
