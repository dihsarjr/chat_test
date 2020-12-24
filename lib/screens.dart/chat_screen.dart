import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
      body: Column(
        children: [
          Expanded(child: Container(child: ListView())),
          Container(
            height: 70,
            color: Colors.teal[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        // labelText: "Enter Email",
                        hintText: "Chat",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )),
                  IconButton(icon: Icon(Icons.send), onPressed: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
