import 'package:flutter/material.dart';
import 'package:my_chat_app/message_send.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B202D),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.asset("images/chat5.png").image,
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Queen",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 85,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.help))
        ],
      ),
      // Message Display Parts
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "1 FEB AT12:00 AM",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            chatMessage(
                'What is Flutter sir and why we used flutter now a day?',
                const Color(0xff373E4E)),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: chatMessage(
                  "Flutter is Google's portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.",
                  const Color(0xff7A8194)),
            ),
            const SizedBox(
              height: 8,
            ),
            chatMessage('Ok Sir', const Color(0xff373E4E)),
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                "08:12 AM",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: chatMessage(
                  "Flutter is a trending topic now a day.If you leran, It is good.",
                  const Color(0xff7A8194)),
            ),
            const SizedBox(
              height: 10,
            ),
            chatMessage('Thank you Sir and ', const Color(0xff373E4E)),
            const SizedBox(
              height: 8,
            ),
            chatMessage('I love you😍', const Color(0xff373E4E)),
            // last
            // Message send part
            const Spacer(),
            const MessageSendPart(),
          ],
        )),
      ),
    );
  }

  Container chatMessage(text, colors) {
    return Container(
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
