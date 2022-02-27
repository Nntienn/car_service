import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime selectedDate = DateTime.now().hour >= 18
      ? DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 1)
      : DateTime.now();
  final f = DateFormat('yyyy-MM-dd hh:mm');
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < time.length; i++) {
      if (DateTime.now().hour > time[i] && DateTime.now().hour < 18) {
        time.remove(time[i]);
      }
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
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
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
                  height: MediaQuery.of(context).size.height * 0.3,
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
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 5,
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Date: "),
                  Spacer(),
                  Text(
                    DateFormat('dd-MM-yyyy').format(selectedDate).toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => _selectDate(context),
                    icon: Icon(
                      Icons.calendar_today,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 5,
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Time: "),
                  Spacer(),
                  DropdownButton<int>(
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (int? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: time.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString() +
                            ":00 - " +
                            (value + 1).toString() +
                            ":00"),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 5,
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Service: "),
                  Spacer(),
                  Text(
                    "Tire Repair",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 5,
              height: MediaQuery.of(context).size.height * 0.05,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Price: "),
                  Spacer(),
                  Text(
                    "1.000.000 - 5.000.000 Vnd",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(margin: EdgeInsets.only(left: 10), child: Text("Note:")),
            Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 5,
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'note',
                  ),
                )),
            Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,

                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextButton(
                  onPressed: () {  },
                  child: Text("Booking",),
                )),
          ],
        ),
      ),
    );
  }
}
