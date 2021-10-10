import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/chat_page.dart';

import '../Constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController!.addListener(() {
      setState(() {
        _selectedIndex = _tabController!.index;
      });
      print("Selected Index: " + _tabController!.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 24,
              ),
            ),
            PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 32,
                ),
              ),
              Tab(
                text: "CONVERSATII",
              ),
              Tab(
                text: "STARE",
              ),
              Tab(
                text: "APELURI",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Text("Camera"),
            ChatPage(),
            Text("Status"),
            Text("Calls"),
          ],
        ),
      ),
    );
  }

  void choiceAction(String choice) {}
}
