import 'package:flutter/material.dart';

class appointmentscreen extends StatelessWidget{
  List imgList = [
    Image.network("https://www.google.com/search?sxsrf=AB5stBgkPUqeObtVErgO4R_G7UrOp4nKPg:1689866579741&q=doctors+image&tbm=isch&sa=X&ved=2ahUKEwjL2s_Jy52AAxWOqVYBHSJVCmgQ0pQJegQICxAB&biw=1536&bih=746&dpr=1.25#imgrc=aueMOhHXoexX5M"),
    Image.network("https://www.google.com/search?sxsrf=AB5stBgkPUqeObtVErgO4R_G7UrOp4nKPg:1689866579741&q=doctors+image&tbm=isch&sa=X&ved=2ahUKEwjL2s_Jy52AAxWOqVYBHSJVCmgQ0pQJegQICxAB&biw=1536&bih=746&dpr=1.25#imgrc=yimmVTbjooX5GM"),
    Image.network("https://www.google.com/search?sxsrf=AB5stBgkPUqeObtVErgO4R_G7UrOp4nKPg:1689866579741&q=doctors+image&tbm=isch&sa=X&ved=2ahUKEwjL2s_Jy52AAxWOqVYBHSJVCmgQ0pQJegQICxAB&biw=1536&bih=746&dpr=1.25#imgrc=_MSIU2EjgbCVBM"),
    Image.network("https://www.google.com/search?sxsrf=AB5stBgkPUqeObtVErgO4R_G7UrOp4nKPg:1689866579741&q=doctors+image&tbm=isch&sa=X&ved=2ahUKEwjL2s_Jy52AAxWOqVYBHSJVCmgQ0pQJegQICxAB&biw=1536&bih=746&dpr=1.25#imgrc=XkYto98OjeMgCM"),
  ];
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 27,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                  size: 27,
                ),
              )
            ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(radius: 35,
                backgroundImage: AssetImage("doctor1.jpg"),
              ),
              SizedBox(height: 15),
              Text(
                "DR. Doctor Name",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height:  5),
              Text(
                "Therapist",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_ic_call_outlined,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.chat_bubble_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              )
            ],
          ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 21,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("ABOUT Doctor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Doctors are one of the most important people in our society. "
                        "They are lifesavers. They are the first ones to lend a helping hand when someone is struggling. "
                        "Many parents dream that their children might become doctors in the future.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "REVIEWS",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber),
                      Text("4.9",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                          "(124)",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.purpleAccent,
                        ),
                  ),
                     Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                            "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.purpleAccent,
                          ),
                        ),
                      ),
                ],
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 3,
    ),
    ],
    ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(""),
                            ),
                              title: Text(
                                "DR. Doctor Name",
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
    ),
    ),
                              subtitle: Text("1 day ago"),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Icon(Icons.star_sharp,
                                   color: Colors.amberAccent,
                                ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                        color: Colors.black54,
    ),
    ),
                                ],
    ),
                            ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  "Many thanks to Dr. Dear. he is a great and professional",
                                  style: TextStyle(
                                    color: Colors.black,
    ),
    ),
    ),
                            Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
    ),
    ),
                            ListTile(
                              leading: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0EEFA),
                                  shape: BoxShape.circle),
                                child: Icon(
                                  Icons.location_on_sharp,
                                  color: Color(0xFF7165D6),
                                  size: 30,
    ),
    ),
                            title: Text(
                            "India, Medical Center",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
    ),
                            ),
                            subtitle: Text("Address Line of The Medical Center"),
    ),
                    ),
                    ),
                    );
    },
              ),
            )
          ],
        ),
      ),
  ],
      ),
    ),
    bottomNavigationBar: Container(
    padding: EdgeInsets.all(15),
    height: 130,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          spreadRadius: 3,
    ),
    ],
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Consulation Price",
              style: TextStyle(
                color: Colors.black54,
                fontStyle: FontStyle.normal,
    ),
            ),
            Text(
            "Rs. 100",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
    ),
            ),
    ],
    ),
        SizedBox(height: 16),
        InkWell(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFF7165D6),
              borderRadius: BorderRadius.circular(10),
    ),
        child: Center(
          child: Text(
            "Book Appointment",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
    ),
    ),
    ),
    ),
    )
    ],
    ),
    ),
    );
  }
}