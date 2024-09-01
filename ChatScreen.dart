import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
            leadingWidth: 30,
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/doctor4.jpg"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                ),
              ],
            ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(
              Icons.call_outlined,
              color: Colors.white,
              size: 27,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(
              Icons.video_call_sharp,
              color: Colors.white,
              size: 27,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8,right: 20),
            child: Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 27,
      ),
      ),
      ],
    ),
    ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20, left: 15, bottom: 80),
        itemBuilder: (context, index) => ChatScreen(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                  Icons.add,
                  size: 30,
            ),
      ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type Something",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send_outlined,
                size: 32,
                color: Colors.deepPurpleAccent,
              ),
            ),
      ],
        ),
      ),
      );
  }
}