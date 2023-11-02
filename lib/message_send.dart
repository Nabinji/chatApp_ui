import 'package:flutter/material.dart';

class MessageSendPart extends StatelessWidget {
  const MessageSendPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(30),
            color: const Color(0xff3D4354)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(Icons.camera_alt_outlined),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              "Message",
              style: TextStyle(color: Colors.white54),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.send,
                color: Colors.white54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
//Your all design is redy