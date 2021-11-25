import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUi/avatar_card.dart';
import 'package:whatsapp_clone/CustomUi/contact_card.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groupmember = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Grup nou",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Adăugați participanți",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groupmember.isNotEmpty ? 90 : 10,
                );
              }

              return InkWell(
                onTap: () {
                  if (contacts[index - 1].select == false) {
                    setState(() {
                      contacts[index - 1].select = true;
                      groupmember.add(contacts[index - 1]);
                    });
                  } else {
                    setState(() {
                      contacts[index - 1].select = false;
                      groupmember.remove(contacts[index - 1]);
                    });
                  }
                },
                child: ContactCard(contact: contacts[index - 1]),
              );
            },
          ),
          groupmember.isNotEmpty
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groupmember.remove(contacts[index]);
                                  });
                                },
                                child: AvatarCard(
                                  contact: contacts[index],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
