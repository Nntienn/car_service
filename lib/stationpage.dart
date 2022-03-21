import 'package:car_service/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class StationPage extends StatefulWidget {
  @override
  _StationPageState createState() => _StationPageState();
}

class _StationPageState extends State<StationPage> {
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
        title: Text("Station"),
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
                              "https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    ignoreGestures: true,
                    itemSize: 30,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "580 Lê Văn Khương, P.Thới An, Q. 12 , Tp. HCM",
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "8:00 AM - 5:00 PM",
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Service",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  type("Tire Repair", Icon(Icons.car_repair), "500.000 vnd"),
                  type("Cleaning", Icon(FontAwesomeIcons.handsWash), "200.000 vnd"),
                  type("Engine Repair", Icon(Icons.engineering), "2.000.000 vnd"),
                  type("Re-Pain", Icon(Icons.format_paint), "2.000.000 vnd"),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget type(String service, Icon icon, String price) {
    return GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BookingPage(ATitle: service,);
        }));
      },
      child: Container(
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
      ),
    );
  }
}
