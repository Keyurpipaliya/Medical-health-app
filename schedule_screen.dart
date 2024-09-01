import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;

  final _ScheduleWidgets =[
   // UpcomingSchedule(),
    Container(
      child: Text("UpComing"),
    ),
    Container(
      child: Text("Completed"),
    ),
    Container(
      child: Text("Canceled"),
    ),
  ];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
            },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 26),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0 ? Color(0xFF7165D6) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("UpComing",
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                      },
                      child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 26),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1 ? Color(0xFF7165D7) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Completed",
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                          color: _buttonIndex == 2 ? Colors.white : Colors.black,
                      ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    setState(() {
                    });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 26),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2 ? Color(0xFF7165D7) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Canceled",
                        style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 31),
            _ScheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}