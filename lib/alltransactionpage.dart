import 'package:car_service/detailpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alltransactionpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget transaction(String service, String station,String date, String time, String price) {
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return detailpage(); //Routing Home Page in here
                    }));
                  },
                  child: Text(
                    "Detail",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
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
        title: Text("Transactions"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
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
                    Divider(),
                    transaction("Tire Repair", "Z1 Auto Center",
                        "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                    Divider(),
                    transaction("Tire Repair", "Z1 Auto Center",
                        "04-02-2022", "8:00 - 9:00 AM", "3.000.000"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Spacer(),
              Text(
                "50.000.000 Vnd",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
