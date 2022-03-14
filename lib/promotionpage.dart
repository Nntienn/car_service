import 'package:car_service/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Promotion"),
      ),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.pjico.com.vn/wp-content/uploads/2016/09/1474342558213_8506718.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  padding: EdgeInsets.all(10),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Z1 Auto Center",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: width,
              height: height * 0.55,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // border: Border.all(width: 0.5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: Offset(5, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GIFT CODE 500.000 Vnd",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10,),
                            Text("From 21/03/2022 To 30/03/2022",overflow: TextOverflow.clip,)
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Code",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10,),
                            Text("1A55C1",overflow: TextOverflow.clip,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Decription", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Text("500.000 VND voucher offer when using service at all of Z1 Auto Stations with billing at least 5.000.000 VND"),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Term and Condition", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Text("- Limited to 3 times use per customer"),
                  SizedBox(height: 10,),
                  Text("- Apply for bills with a value of at least 5,000,000 VND"),
                  SizedBox(height: 10,),
                  Text("- Can be using at all Z1 Station"),
                  SizedBox(height: 10,),
                  Text("- The code is valid from March 21, 2022 to the end of March 30, 2022"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BookingPage(); //Routing Home Page in here
              }));
            },
            child: Text(
              "Use Code",
            ),
          )),
    );

  }

  Widget type(String service, Icon icon, String price) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.all(10),
      height: 40,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 20,
          ),
          Text(
            service,
            style: TextStyle(fontSize: 15),
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(fontSize: 15),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
