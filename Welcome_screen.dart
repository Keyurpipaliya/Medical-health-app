import 'package:flutter/material.dart';
import 'package:medicalhealthapp/Login_Screen.dart';
import 'package:medicalhealthapp/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NavBarRoots(), {
    }
                  ));
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Color(0xFF7165D6),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.all(30),
              child: Image.network("https://www.google.com/search?sxsrf=AB5stBhfT1lbdXvPRRW6FCkd8eItvT9M2w:1689701874772&q=doctor+image&tbm=isch&sa=X&ved=2ahUKEwi1m5aA5piAAxUnp1YBHV_VCiEQ0pQJegQICRAB"),
              ),
              SizeBox(height: 50),
              Text(
              "Doctors Appointment",
              style: TextStyle(
              color: Color(0xFF7165D6),
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
    ),
            ),
              SizedBox(height: 60),
              Text("Appoint your Doctor",
              style: TextStyle(
              color: Colors.black12,
              fontSize: 20,
              fontWeight: FontWeight.w500,
    ),
    ),
          SizeBox(height: 60),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Color(0xFF7165D6),
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
              onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) =>
    ));
    ),
              child: Padding(
              EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              child: Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold;
              ),
              Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                ),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                LoginScreen(),
    ));
    },
                child: Padding(
                EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                "Sign In",
                style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                )
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                LoginScreen(),
    ));
    },
                child: Padding(
                EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                "Sign In",
                style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold;
    ),
              ),
              ],
        ),
      ),
    );
  }
}