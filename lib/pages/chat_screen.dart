import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutterfirebase/views/components/chat_carousel_container.dart';

import '../views/components/app_drawer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("Chats", style: TextStyle()),
      ),
      drawer: const AppDrawer(),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChatCarouselContainer(),
                  SizedBox(width: 10),
                  ChatCarouselContainer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
