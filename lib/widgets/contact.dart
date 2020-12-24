import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({
    Key key,
  }) : super(key: key);

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
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1554384645-13eab165c24b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"),
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
                          "John deo",
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
