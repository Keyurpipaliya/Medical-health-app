import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class WelcomeScreen extends StatelessWidget{
  Widget build(BuildContext context)
  return Material(
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            pColor.WithOpacity(0.8),
            pColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
  ),
  ),
  child: Column(
    children: [
      padding: EdgeInsets.all(30),
      child: Image.asset("");
  ),
  ],
  SizeBox(height: 50),
  Text(
  "Doctor Online",
  style: TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    WordSpacing: 2,
  ),
  ),
  SizeBox(height: 12),
  Text(
  "Appoint Your Doctor",
  style: TextStyle(
    color: Colors.white;
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  ),
  SizeBox(height: 60),
  Material(
    color: wColor,
    borderRadius: BorderRadius.circular(10),
    child: Inkwell(
    onTap: () {},
    Navigator.push(
    context, MaterialPageRoute(
      builder: (context) => HomeScreen(),
  );
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      child: Text(
      "Go is open page",
      style: TextStyle(
        color: pColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
  ),
  ),
  )
  ),
  SizeBox(height: 60),
  Image.asset("",),
  color: Wcolor.red,
  )
  ),
  ),
  );
}
