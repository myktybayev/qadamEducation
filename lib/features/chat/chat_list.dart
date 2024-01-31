import 'package:flutter/material.dart';
import 'package:qadam_education/features/chat/messages.dart';

void main() {
  runApp(const ChatList());
}

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Chat List'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Mentorlar'),
                Tab(text: 'Mugalimder'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Chattar(tabTitle: 'Mentorlar'),
              Chattar(tabTitle: 'Mugalimder'),
            ],
          ),
        ),
      ),
    );
  }
}

class Chattar extends StatelessWidget {
  final String tabTitle;
  const Chattar({super.key, required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    List<Messages> messagesListForTab = getMessagesListForTab();
    return ListView.builder(
      itemCount: messagesListForTab.length,
      itemBuilder: (context, index) {
        return MyItem(messagesListForTab[index]);
      },
    );
  }

  List<Messages> getMessagesListForTab() {
    if (tabTitle == 'Mentorlar') {
      return [
        Messages(
          photo: "assets/images/profile_photo.png",
          name: "Nazerke Utetileu",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo.png",
          name: "Nazerke Utetileu",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo.png",
          name: "Nazerke Utetileu",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo.png",
          name: "Nazerke Utetileu",
          email: "nazerke.utetileu@jihc.kz",
        ),

// List of mentor messages
      ];
    } else if (tabTitle == 'Mugalimder') {
      return [
        Messages(
          photo: "assets/images/profile_photo2.png",
          name: "Nursaya Sharipbay",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo2.png",
          name: "Nursaya Sharipbay",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo2.png",
          name: "Nursaya Sharipbay",
          email: "nazerke.utetileu@jihc.kz",
        ),
        Messages(
          photo: "assets/images/profile_photo2.png",
          name: "Nursaya Sharipbay",
          email: "nazerke.utetileu@jihc.kz",
        ),
      ];
    } else {
      return [];
    }
  }
}

class MyItem extends StatelessWidget {
  final Messages messages;

  const MyItem(this.messages, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey,
        width: 1.0,
      ))),
      padding: const EdgeInsets.only(bottom: 20),
      margin: const EdgeInsets.only(left: 30, right: 40, top: 40),
      child: Row(
        children: [
          Image.asset(messages.photo),
          const SizedBox(
            width: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messages.name,
                  style: const TextStyle(
                      fontSize: 18,
                      decorationColor: Colors.white,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  messages.email,
                  style: const TextStyle(
                    decorationColor: Colors.white,
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
