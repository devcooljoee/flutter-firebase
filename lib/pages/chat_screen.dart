import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
