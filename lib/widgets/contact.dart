import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  String name;
  String image;

  Contact({Key key, this.image, this.name}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(widget.image),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Container(
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${widget.name}",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Siliconvally us america",
                          style: TextStyle(fontSize: 14, color: Colors.black12),
                        ),
                      ],
                    ),
                  ),
                )),
                Container(
                  width: 80,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "15-mon-dec",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
