import 'package:car_service/alltransactionpage.dart';
import 'package:car_service/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget transaction(String service, String station, String date, String time,
        String price) {
      return Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  station,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price + " vnd",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return detailpage(); //Routing Home Page in here
                    }));
                  },
                  child: Text(
                    "Detail",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.blue),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://coolthemestores.com/wp-content/uploads/2021/02/lamborghini-featured.jpg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: Alignment(0.0, 2.5),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/R.beb43cb8850bde78a0ef0bb12933e138?rik=bXbAnQ4E13oWQQ&pid=ImgRaw&r=0"),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "User Name",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blueGrey,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ho Chi Minh, Viet Nam",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Premium user",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black45,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    elevation: 2.0,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              letterSpacing: 2.0, fontWeight: FontWeight.w300),
                        ))),
                SizedBox(
                  height: 15,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Times Booked",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "15",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Total Paid",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "50.000.000 vnd",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Booking history",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return alltransactionpage(); //Routing Home Page in here
                                }));
                              },
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        transaction("Tire Repair", "Z1 Auto Center",
                            "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                        Divider(),
                        transaction("Tire Repair", "Z1 Auto Center",
                            "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                        Divider(),
                        transaction("Tire Repair", "Z1 Auto Center",
                            "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                        Divider(),
                        transaction("Tire Repair", "Z1 Auto Center",
                            "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                        Divider(),
                        transaction("Tire Repair", "Z1 Auto Center",
                            "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
