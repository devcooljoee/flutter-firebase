import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/components/username_textfield.dart';

class ChatCarouselContainer extends StatelessWidget {
  final TextEditingController? messageController;
  const ChatCarouselContainer({super.key, this.messageController});

  // void openAddSign() async {
  //   showDialog(

  //       builder: (context) {
  //         return const PopupMenuItem(
  //             child: Column(
  //           children: [
  //             Text(
  //               "Image",
  //               style: AppText.subText,
  //             ),
  //             Text(
  //               "Document",
  //               style: AppText.subText,
  //             ),
  //             Text(
  //               "Video",
  //               style: AppText.subText,
  //             ),
  //           ],
  //         ));
  //       }, context: );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        // width: 300,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Theme.of(context).colorScheme.primary),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: UsernameTextField(
                  hinttext: "enter your message",
                  controller: messageController,
                  obscuretext: false,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.send_rounded,
                      color: Colors.white60,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
