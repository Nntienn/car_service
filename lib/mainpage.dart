import 'package:car_service/constant.dart';
import 'package:car_service/mappage.dart';
import 'package:car_service/servicepage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State<MainPage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.0),
                  // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Color(0xff1DE5E2),
                    Color(0xffB588F7),
                  ], // red to yellow
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://th.bing.com/th/id/R.beb43cb8850bde78a0ef0bb12933e138?rik=bXbAnQ4E13oWQQ&pid=ImgRaw&r=0"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Smart Service User",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                          Text(
                            "Smart Service app",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Theme(
                      data: ThemeData(
                        primaryColor: Colors.white,
                        primaryColorDark: Colors.white,
                      ),
                      child: const TextField(
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        decoration: InputDecoration(
                            focusColor: Colors.white,
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Search for Service",
                            prefixIcon:
                                SizedBox(width: 50, child: Icon(Icons.search)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Service",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kPrimaryColor),
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.275,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      children: <Widget>[
                        service(
                            "https://cdn-icons-png.flaticon.com/512/4634/4634554.png",
                            "Wash"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/2481/2481576.png",
                            "Interior clean"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/5848/5848045.png",
                            "Polishing"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/950/950501.png",
                            "Tire repair"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/4523/4523840.png",
                            "Engine Wash"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/887/887247.png",
                            "Spray"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/2114/2114450.png",
                            "Blower"),
                        service(
                            "https://cdn-icons-png.flaticon.com/512/501/501870.png",
                            "Carpet Clean"),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Best Stations",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kPrimaryColor),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        station(
                            "https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg",
                            "Z1 Auto Center",
                            "580 Lê Văn Khương, P.Thới An, Q. 12 , Tp. HCM"),
                        station(
                            "https://vsetgroup.com/uploads/product/z2049193823334_467b3a99072af1fea8310ff4903b9290.jpg",
                            "VS Auto Service",
                            "15 Bùi Quang Là, P.12, Q. Gò Vấp , Tp. HCM"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mneaGT6tAcMelcIVqQAMhok4Ejiw0jm6_A&usqp=CAU",
                            "Sữa Chữa Oto TOTCOM",
                            "262 Tô Hiệu, Hà Cầu, Hà Đông , Hà Nội"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQpiT-3q0WXTE-_p9UivYwX8ldh1jefoeYA&usqp=CAU",
                            "Auto Hữu Toàn",
                            "580 Lê Văn Khương, P.Thới An, Q. 12 , Tp. HCM"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_SNDu4yiDf-ak2wY_cBXQ3-gR2m7Pc6SwQw&usqp=CAU",
                            "Viện Auto",
                            "580 Lê Văn Khương, P.Thới An, Q. 12 , Tp. HCM"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Promotion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kPrimaryColor),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapPage()));},
        tooltip: 'NearBy Station',
        child: const Icon(Icons.location_on),
      ),
    );
  }

  Widget service(String img, String title) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return DashboardScreen(); //Routing Home Page in here
            }));
      },
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.width * 0.18,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(img), scale: 10),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Colors.lightGreenAccent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }

  final List<Widget> imageSliders = [
    'http://thuanphatnhatrang.com/uploads/posts/phu_tung_t12.jpg?1638321879182',
    'https://hondatancuong.com.vn/wp-content/uploads/2022/02/dang-tin-web-405x400.jpg',
    'https://www.pjico.com.vn/wp-content/uploads/2016/09/1474342558213_8506718.jpg',
    'https://static.carmudi.vn/wp-content/uploads/2019-11/o2w9czuRYB.jpg',
    'http://thuanphatnhatrang.com/uploads/posts/53a8de7913d1de8f87c0_2.jpg?1643528224216'
  ]
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    ],
                  )),
            ),
          ))
      .toList();

  Widget station(String img, String title, String address) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            address,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
