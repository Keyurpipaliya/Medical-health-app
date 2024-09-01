import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  List catNames = [
    "Dental",
    "Deart",
    "Eye",
    "Brain",
    "Ear"
];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 30),
    Icon(MdiIcons.heartPlus, color: pColor, size: 30),
    Icon(MdiIcons.eye, color: pColor, size: 30),
    Icon(MdiIcons.brain, color: pColor, size: 30),
    Icon(MdiIcons.earHearting, color: pColor, size: 30),
];

Widget build(BuildContext context) {
  return Scaffold(
    color: Color.(0xFFD9E4EF),
    child: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  pColor:withOpacity(0.8),
                  pColor,
                ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
  )
  ),
  ),
  Navigator.of(context).push(context) => Compone
  ],),
)
  );
}
)