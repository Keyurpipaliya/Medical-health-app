import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController LoginController = TextEditingController();
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 15),
              Padding(
              padding: EdgeInsets.all(20),
              child: Image.network("Doctor+group+&gs_lcp=CgNpbWcQAzIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgYIABAFEB4yBggAEAUQHjoKCAAQigUQsQMQQzoICAAQgAQQsQM6CwgAEIAEELEDEIMBOgQIIxAnOg0IABCKBRCxAxCDARBDOgQIABADULACWL5OYJFaaANwAHgAgAHmA4gBrhiSAQcyLTIuNS4ymAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=kDi1ZJPgJtLZ4-"),
    ),
            ],
            SizedBox(height: 12),
            Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter is Username"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      if(passToggle == true) {
                        passToggle = false;
                      } else {
                        passToggle = true;
                      }
                      setState(() {});
                    },
                      child: passToggle
                      ? Icon(CupertinoIcons.eye_slash_fill)
                      : Icon(CupertinoIcon.eye_fill),
                  ),
                ),
                  border: OutlinedBorder(),
                  Padding(
                    alignment: Alignment.center,
                    child: TextField(
                      obscureText: passToggle ? true : false,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(
    ),
                      label: Text("Enter is Username"),
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: InkWell(
                      onTap: () {
                        if(passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                         }
                        setState(() {});
                      },
                        child: passToggle
                        ? Icon(CupertinoIcons.eye_slash_fill)
                        : Icon(CupertinoIcon.eye_fill),
    ),
    ),
                  border: OutlinedBorder()
              )
            ),
            SizeBox(height:20),
            Material(
              color: Color(0xFF7165D6),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => LoginScreen(),
                ),
    );
    },
    ),
    ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Center(
                    child: Text(
                      "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Dont have any account",
                        style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black38,
                  ),
    ),
    ),
    ),
                      TextButton(
                      onPressed: () {},
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginUpScreen(),
                        child: Text(
                        "create Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.(0xFF7165D6),
    ),
                  )
                }
    ],
    )
  }
  )
  )
  ),
              )
            )
          ),
        );
      );
  }
}