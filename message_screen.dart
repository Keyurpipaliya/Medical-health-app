import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medicalhealthapp/screens/ChatScreen.dart';

class messageScreen extends StatefulWidget {
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
    "doctor5.jpg",
    "doctor6.jpg",
    "doctor7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Send Messages",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Active Now",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
          ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                            "Images/${imgs[index]}",
                              fit: BoxFit.cover,
    ),
    ),
    ),
    ),
                Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(3),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                ),
    ),
                    ],
    ),
    );
              },
            ),
            ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
          "Recent Chat",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal
            ),
          ),
        ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context,int index) {
                return ListTile(
                  minVerticalPadding: 20,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen(),
                    ),
                    leading:
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "images/${imgs[index]}",
                      ),
                    ),
                    );
                    title:
                    Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    );
                    subtitle:
                    Text(
                      "Hello, Doctor are you there",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    );
                    trailing:
                    Text(
                      "12:30",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                      ),
                    );
                  },
                );
              },
      ),
    ]
    ),
    );
  }
}