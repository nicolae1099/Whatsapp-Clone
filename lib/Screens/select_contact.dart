import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Constants/constants.dart';
import 'package:whatsapp_clone/CustomUi/button_card.dart';
import 'package:whatsapp_clone/CustomUi/contact_card.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';
import 'package:whatsapp_clone/Screens/create_group.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Iulia",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Nic",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Pe bune?",
        status: "Status",
      ),
      ChatModel(
        name: "Startup",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "19:02",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Cristina Telek",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Bairam Revelion",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Iulia",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Nic",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Pe bune?",
        status: "Status",
      ),
      ChatModel(
        name: "Startup",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "19:02",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Cristina Telek",
        icon: "assets/person.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
      ChatModel(
        name: "Bairam Revelion",
        icon: "assets/groups.svg",
        isGroup: false,
        time: "18:00",
        currentMessage: "Neataaa. Bubu e cuminte",
        status: "Status",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Alege??i un contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "243 de contacte",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 26,
            ),
          ),
          PopupMenuButton<String>(
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context) {
              return Constants.selectContactChoices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateGroup()));
              },
              child: const ButtonCard(
                icon: Icons.group,
                name: "Grup nou",
              ),
            );
          } else if (index == 1) {
            return const ButtonCard(
              icon: Icons.person_add,
              name: "Contact nou",
            );
          }
          return ContactCard(contact: contacts[index - 2]);
        },
      ),
    );
  }
}
