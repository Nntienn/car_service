import 'package:flutter/material.dart';

import 'bookingpage.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tire Repair"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "Stations near you",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            service(
                "https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg",
                "Z1 Auto Center",
                "580 Lê Văn Khương, P.Thới An, Q. 12 , Tp. HCM",
                "1.000.000 - 5.000.000 Vnd",
                "8.5"),

          ],
        ),
      ),
    );
  }

  Widget service(String img, String title, String address, String price, String rating) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BookingPage(); //Routing Home Page in here
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    address,
                    overflow: TextOverflow.clip,
                  ),
                  Text("Price: " + price, style: TextStyle(color: Colors.green),),
                  Text("Rating: " + rating + "/10.0"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
