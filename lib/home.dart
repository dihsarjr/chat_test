import 'package:chat_app/screens.dart/chat_screen.dart';
import 'package:chat_app/widgets/contact.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemBuilder: (ctx, i) {
                return Material(
                    color: Colors.transparent,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => ChatScreen()));
                        },
                        child: Contact()));
              },
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
