import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cool_alert/cool_alert.dart';

class detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget row(String title, info) {
      return Row(
        children: [
          Text(title),
          Spacer(),
          Text(
            info,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    row("Service", "Tire Repair"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Station", "Z1 Auto Center"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Date", "04-03-2022"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Time", "8:30 AM"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Staff", "Cao Van Phu"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Price", "3.000.000 vnd"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Completion time", "10:30 AM"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    row("Customer", "Andy"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Phone", "0123456879"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Car Brand", "Audi"),
                    SizedBox(
                      height: 10,
                    ),
                    row("Car Name", "Audi a6"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Feedback",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      itemSize: 30,
                      initialRating: 0,
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
                    Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.05),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: TextFormField(
                          maxLines: 30,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Feedback',
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            border: Border.all(width: 0.05),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            CoolAlert.show(
                                context: context,
                                type: CoolAlertType.success,
                                text: "Booking successful!",
                                onConfirmBtnTap: () {
                                  Navigator.pop(context);
                                });
                          },
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
