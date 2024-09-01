import 'package:flutter/material.dart';
import 'package:medicalhealthapp/Login_Screen.dart';

class signUpscreen extends StatelessWidget {

  State<SignupScreen> createState() => _signUpScreenState();
}

class _signUpscreenState extends State<signUpscreen> {
  bool passToggle = true;
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:  SingleChildScrollView(
        child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(""),
    ),
          Sizebox:(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                hintText: "Enter Your Full Name"
                border: OutlineInputBorder(
                prefixIcon: Icon(Icons.name),
    ),
    ),
    ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your Email Address",
                border: OutlineInputBorder(
                prefixIcon: Icon(Icons.email),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your phone number",
                border: OutlineInputBorder(
                prefixIcon: Icon(Icons.phone),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email Password",
                hintText: "Enter your Password",
                border: OutlineInputBorder(
                prefixIcon: Icon(Icons.password),
                prefixIcon: InkWell(onTap: () {
                  if(passToggle == true){
                  passToggle = false;
                  } else {
                    setState(() {});
          },
            child: passToggle
              ? Icon(CupertinoIcons.eye_slash_fill),
              : Icon(CupertinoIcons.eye_fill),
    })
  ],

    SizeBox(height: 10),
    Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: double.infinity,
        child: Material(
          color: Color(0xFF7165D6),
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
          onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => LoginScreen(),
    ),
    },
    ),
    ),
    ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        "Already have account",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black38,
    ),
    ),
    TextButton( 
      onPressed: () {},
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUpScreen(),
    child: Text(
      "Log In",
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.(0xFF7165D6),
      ),
    );
  }
}