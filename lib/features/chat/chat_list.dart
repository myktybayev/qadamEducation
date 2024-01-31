import 'package:flutter/material.dart';
import 'package:qadam_education/features/chat/messages.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messagesList.length,
      itemBuilder: (context, index) {
        return MyItem(messagesList[index]);
      },
    );
  }
}

List<Messages> messagesList = [
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
];

class MyItem extends StatelessWidget {
  final Messages messages;

  const MyItem(this.messages, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.black,
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
