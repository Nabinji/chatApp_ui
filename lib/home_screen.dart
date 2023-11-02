import 'package:flutter/material.dart';
import 'package:my_chat_app/chat_acreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B202D),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "  Messages",
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  onlineUser("images/chat2.png", "Leela"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat3.png", "Alan"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat4.png", "Dary"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat5.png", "Queen"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat6.png", "Beautiful"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat7.png", "Toney"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat8.png", "Emma"),
                  const SizedBox(
                    width: 18,
                  ),
                  onlineUser("images/chat9.png", "Ram"),
                  const SizedBox(
                    width: 18,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 555,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff292F3F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ));
                    },
                    child: myCurrentMessageFriends("images/chat5.png",
                        "It's me Queen", '06:12', 'I love you😍'),
                  ),
                  myCurrentMessageFriends('images/chat11.png', 'James Rodry',
                      'Today', 'Thnkys for your time'),
                  myCurrentMessageFriends('images/chat8.png', ' Emma Maria',
                      'Mon', "let's break up"),
                  myCurrentMessageFriends('images/chat9.png', 'Benjamin Ro.',
                      '12 Oct', "Were is another tutorial"),
                  myCurrentMessageFriends('images/chat1.png', 'Noal Maxwell',
                      '12 Oct', 'I ame fine here and you'),
                  myCurrentMessageFriends('images/chat10.png', 'Steve De Paul',
                      '9 may', 'I busy nay a day'),
                  myCurrentMessageFriends('images/chat4.png', 'Dary Conway ',
                      '12 Oct', 'Bye we will meet again'),
                  myCurrentMessageFriends('images/chat111.png', 'Marco Maxwel',
                      '12 Oct', 'I ame fine here and you'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

// Recent chat friends
  Padding myCurrentMessageFriends(image, name, date, text) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, right: 10.0, top: 35.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: Image.asset(image).image,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }

// online user
  Column onlineUser(image, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: Image.asset(image).image,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
