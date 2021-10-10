import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Constants/constants.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';

class IndividualChat extends StatefulWidget {
  const IndividualChat({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  widget.chatModel.icon,
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Last seen today at 12:05",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton<String>(
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context) {
              return Constants.individualChatChoices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a message",
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.emoji_emotions),
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt),
                                ),
                              ],
                            ),
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color(0xFF075E54),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
