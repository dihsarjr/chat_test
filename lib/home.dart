import 'package:chat_app/screens.dart/chat_screen.dart';
import 'package:chat_app/widgets/contact.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

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
      body: StreamBuilder<dynamic>(
          // ignore: deprecated_member_use
          stream: Firestore.instance
              .collection('user/6xL8f2NPL3QXqAJizQ64/message')
              .orderBy("time", descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
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
                                child: Contact(
                                  image: snapshot.data.documents[i]["image"],
                                  name: snapshot.data.documents[i]["text"],
                                )));
                      },
                      itemCount: snapshot.data.documents.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  )
                ],
              );
            } else {
              return Text("data");
            }
          }),
    );
  }
}
