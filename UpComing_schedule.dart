import 'package:flutter/material.dart';

class UpComingSchedule extends StatelessWidget {
  const UpComingSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          "About Doctors",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
      ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
        ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Dr.Doctor Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  subtitle: Text("Therapist"),
                  trailing: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(""),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month_outlined,
                          color: Colors.black26,
                        ),
                        SizedBox(
                          width: 5,),
                        Text(
                          "12/01/2023",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
          ];
                ),
                    Icon(Icons.calendar_month_outlined,
                      color: Colors.black26,
                    ),
                    SizedBox(
                      width: 5,),
                    Text(
                      "12/01/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
          ),
        ),
                Row(
                  children: [
                    Icon(Icons.access_time_filled_rounded,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "10:30 AM",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Confirmed",
                          style: TextStyle(
                            color: Colors.black26,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                )
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                          "Reschedule",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          ),
                        ),
                        ),
                        ),
                    SizedBox(height: 10),
              ],
            ),
                        Text(
                          "About Doctors",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                      ),
                      ),
                        SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            spreadRadius: 2,
                        ),
                        ],
                          ListTile(
                            title: Text(
                            "Dr.Doctor Name",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal
                        ),
                        ),
                        ),
    ],
                        ),
                        ),
    ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                        subtitle: Text("Therapist"),
                          trailing: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(""),
                      ),
                      ),

    ),
    ),
    );
  }
}

