import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUi/custom_card.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Iulia",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte"),
    ChatModel(
        name: "Nic",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Pe bune?"),
    ChatModel(
        name: "Startup",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "19:02",
        currentMessage: "Neataaa. Bubu e cuminte"),
    ChatModel(
        name: "Cristina Telek",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte"),
    ChatModel(
        name: "Bairam Revelion",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
