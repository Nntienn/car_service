import 'package:car_service/mainpage.dart';
import 'package:car_service/registerpage.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key, required this.ATitle}) : super(key: key);

  final String ATitle;

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime selectedDate = DateTime.now().hour >= 18
      ? DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)
      : DateTime.now();
  final f = DateFormat('dd-MM-yyyy');
  List<int> time = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17];

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now().hour >= 18
          ? DateTime(
              DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)
          : DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  int dropdownValue = 8;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  List<String> service = ["Wash", "Interior clean", "Polishing", "Tire repair"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < time.length; i++) {
      if (DateTime.now().hour > time[i] && DateTime.now().hour < 18) {
        time.remove(time[i]);
      }
    }
    ;
    for (int i = 0; i < service.length; i++) {
      if (service[i] == widget.ATitle) {
        service.removeAt(i);
      }
      print(service.length.toString() +
          "sdasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasas");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (time.isEmpty) {
      time = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Booking"),
      ),
      body: ListView(
        shrinkWrap: true,
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
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (selectedDate.year >= DateTime.now().year &&
                            selectedDate.month >= DateTime.now().month &&
                            selectedDate.day > DateTime.now().day) {
                          selectedDate = selectedDate.add(Duration(
                            days: -1,
                          ));
                        }
                      });
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      size: 30,
                    )),
                GestureDetector(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.76,
                      height: MediaQuery.of(context).size.height * 0.05,
                      alignment: Alignment.center,
                      child: Text(
                        f.format(selectedDate),
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedDate = selectedDate.add(Duration(
                          days: 1,
                        ));
                      });
                    },
                    icon: Icon(Icons.chevron_right, size: 30)),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                "Service",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          type(widget.ATitle, Colors.greenAccent),
          Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                "Time",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              type("NotAvailable", Colors.black12),
              type("Available", Colors.black.withOpacity(0)),
              type("Picking", Colors.greenAccent)
            ],
          ),
          CustomRadioButton(
            margin: EdgeInsets.only(left: 2, top: 5),

            enableShape: true,
            elevation: 0,
            // horizontal: true,
            defaultSelected: "8:00 - 9:00 AM",
            unSelectedBorderColor: Colors.black,
            selectedBorderColor: Colors.black,
            enableButtonWrap: true,
            // width: 120,
            autoWidth: true,
            unSelectedColor: Theme.of(context).canvasColor,
            buttonLables: [
              "8:00 - 9:00 AM",
              "9:00 - 10:00 AM",
              "10:00 - 11:00 AM",
              "11:00 - 12:00 AM",
              "1:00 - 2:00 AM",
              "2:00 - 3:00 AM",
              "3:00 - 4:00 AM",
              "4:00 - 5:00 AM",
            ],
            buttonValues: [
              "8:00 - 9:00 AM",
              "9:00 - 10:00 AM",
              "10:00 - 11:00 AM",
              "11:00 - 12:00 AM",
              "1:00 - 2:00 AM",
              "2:00 - 3:00 AM",
              "3:00 - 4:00 AM",
              "4:00 - 5:00 AM",
            ],
            radioButtonValue: (value) {
              print(value);
            },
            selectedColor: Colors.greenAccent,
          ),
          CheckboxListTile(
            checkColor: Colors.white,

            title: Text("Add more Service"), //    <-- label
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Visibility(
            child: Expanded(
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.1,
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text(service[0]),
                    value: isChecked1, onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  CheckboxListTile(
                    title: Text(service[1]),
                    value: isChecked2, onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                  CheckboxListTile(
                    title: Text(service[2]),
                    value: isChecked3, onChanged: (bool? value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ],
              ),
            ),
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: isChecked,
          ),
        ],
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
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Confirm'),
                  content: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Customer"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Name: "),
                            Spacer(),
                            Text("Andy"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Phone: "),
                            Spacer(),
                            Text("0123456789"),
                          ],
                        ),
                        Text("Detail"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Date: "),
                            Spacer(),
                            Text(DateFormat('dd-MM-yyyy')
                                .format(selectedDate)
                                .toString()),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Time: "),
                            Spacer(),
                            Text(dropdownValue.toString() +
                                ":00 - " +
                                (dropdownValue + 1).toString() +
                                ":00"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Service: "),
                            Spacer(),
                            Text("Tire Repair"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Price: "),
                            Spacer(),
                            Text("Tire repair - 2.000.000 Vnd"),
                          ],
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text("RePain - 3.000.000 Vnd"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Total: "),
                            Spacer(),
                            Text("5.000.000 Vnd"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Promotion Code"),
                        Container(
                          height: 50,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(width: 0.5)),
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            decoration: new InputDecoration.collapsed(
                                hintText: 'Your Promotion Code'),
                          ),
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        CoolAlert.show(
                            context: context,
                            type: CoolAlertType.success,
                            text: "Booking successful!",
                            onConfirmBtnTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage(); //Routing Home Page in here
                              }));
                            });
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: Text(
              "Book",
            ),
          )),
    );
  }

  Widget type(String type, Color color) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.all(10),
      height: 37,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: color),
      alignment: Alignment.center,
      child: Text(
        type,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
