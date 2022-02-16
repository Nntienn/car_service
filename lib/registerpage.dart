

import 'package:car_service/otppage.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'loginspage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _nameController = new TextEditingController();

  TextEditingController _emailController = new TextEditingController();

  TextEditingController _phoneNumController = new TextEditingController();

  TextEditingController _homeAddressController = new TextEditingController();

  TextEditingController _officeAddressController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              AppBar(
                toolbarHeight: 70,
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: Text(
                  'Register',
                  style: TextStyle(color: Colors.black),
                ),
                leading: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ),
              Container(
                height: 5,
                color: kPrimaryLightColor,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Column(
                  children: [
                    // Icon(Icons.account_circle),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 22, 15, 0),
                            child: Icon(
                              Icons.account_circle,
                              color: kPrimaryColor,
                              size: 30,
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 22, 10, 0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextField(
                                controller: _nameController,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                decoration: InputDecoration(
                                  errorText: null,
                                  labelText: "Full name",
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Icon(
                              Icons.email,
                              color: kPrimaryColor,
                              size: 30,
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: StreamBuilder(
                              builder: (context, snapshot) => TextFormField(
                                controller: _emailController,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                // initialValue: _emailController.text,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none,
                                ),
                              ),
                            )),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Icon(
                              Icons.phone,
                              color: kPrimaryColor,
                              size: 30,
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextFormField(
                                controller: _phoneNumController,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black),
                                decoration: const InputDecoration(
                                  labelText: "Phone",
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          'We will send verification code on above given number',
                          style: TextStyle(color: Colors.black26),
                        )),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 22, 15, 0),
                            child: Icon(
                              Icons.location_on,
                              color: kPrimaryColor,
                              size: 30,
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 22, 10, 0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextField(
                                controller: _homeAddressController,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                decoration: InputDecoration(
                                  labelText: "Home address",
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 22, 15, 0),
                            child: Icon(
                              Icons.add_location,
                              color: kPrimaryColor,
                              size: 30,
                            )),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 22, 10, 0),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            controller: _officeAddressController,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            decoration: InputDecoration(
                              labelText: "Office address",
                              labelStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(12),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OtpPage(); //Routing Home Page in here
                  }));
                },
                color: kPrimaryColor,
                textColor: Colors.white,
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
