import 'package:car_service/alltransactionpage.dart';
import 'package:car_service/detailpage.dart';
import 'package:car_service/loginspage.dart';
import 'package:car_service/transactionModel.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUI2 extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileUI2> {
  @override
  Widget build(BuildContext context) {

    List<Transaction> list = [
      Transaction(
          service: "Tire Repair",
          station: "Z1 Auto Center",
          date: "04-02-2022",
          time: "8:00 - 9:00 AM",
          price: "3.000.000",
          status: "Finished"),
      Transaction(
          service: "Tire Repair",
          station: "Z1 Auto Center",
          date: "04-02-2022",
          time: "8:00 - 9:00 AM",
          price: "3.000.000",
          status: "Finished"),
      Transaction(
          service: "Tire Repair",
          station: "Z1 Auto Center",
          date: "04-02-2022",
          time: "8:00 - 9:00 AM",
          price: "3.000.000",
          status: "Finished"),
      Transaction(
          service: "Tire Repair",
          station: "Z1 Auto Center",
          date: "04-02-2022",
          time: "8:00 - 9:00 AM",
          price: "3.000.000",
          status: "Finished"),
      Transaction(
          service: "Tire Repair",
          station: "Z1 Auto Center",
          date: "04-02-2022",
          time: "8:00 - 9:00 AM",
          price: "3.000.000",
          status: "Pending"),
    ];
    Future<void> _showMyDialog(int i)  {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Cancel Booking'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text('Cancel Reason'),
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
                          hintText: 'Reason',
                        ),
                      )),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Confirm'),
                onPressed: ()
                {
                  Navigator.of(context).pop();
                  CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      text: "Cancel Request Sent!",
                      onConfirmBtnTap: () {
                        Navigator.pop(context);
                      });




                },
              ),
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    Widget transaction(String service, String station, String date, String time,
        String price, String status) {
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
                status == "Finished"
                    ? Text(
                        status,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.greenAccent),
                      )
                    : Text(
                        status,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.orangeAccent),
                      ),
                Text(
                  price + " vnd",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                status == "Finished"
                    ? GestureDetector(
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
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detailpage(); //Routing Home Page in here
                          }));
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.redAccent),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage(); //Routing Home Page in here
                    }));
                  },
                  child: Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      elevation: 2.0,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300),
                          ))),
                ),
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
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {

                              return Column(
                                children: [
                                  Divider(),
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              list[index].service,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              list[index].station,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              list[index].date,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              list[index].time,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            list[index].status == "Finished"
                                                ? Text(
                                                    list[index].status,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color:
                                                            Colors.greenAccent),
                                                  )
                                                : Text(
                                                    list[index].status,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors
                                                            .orangeAccent),
                                                  ),
                                            Text(
                                              list[index].price + " vnd",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            list[index].status == "Finished"
                                                ? GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return detailpage(); //Routing Home Page in here
                                                      }));
                                                    },
                                                    child: Text(
                                                      "Detail",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.blue),
                                                    ),
                                                  )
                                                : GestureDetector(
                                                    onTap: (){
                                                      _showMyDialog(index);
                                                    },
                                                    child: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                          color:
                                                              Colors.redAccent),
                                                    ),
                                                  ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              );
                            })
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
