import 'package:flutter/material.dart';

class GaragePage extends StatefulWidget {
  @override
  _GaragePageState createState() => _GaragePageState();
}

class _GaragePageState extends State<GaragePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(image: NetworkImage("https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg"
          //     )
          //
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

}