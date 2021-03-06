import 'package:car_service/constant.dart';
import 'package:car_service/mappage.dart';
import 'package:car_service/profilepage.dart';
import 'package:car_service/promotionpage.dart';
import 'package:car_service/servicepage.dart';
import 'package:car_service/stationpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return ProfileUI2(); //Routing Home Page in here
                          }));
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/R.beb43cb8850bde78a0ef0bb12933e138?rik=bXbAnQ4E13oWQQ&pid=ImgRaw&r=0"),
                        ),
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
                    height: 25,
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
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
              height: 10,
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
                    padding: EdgeInsets.fromLTRB(0, 10 , 0, 10),
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        service(
                            "https://voxeoto.vn/wp-content/uploads/2020/07/1.jpg",
                            "Wash",
                            '500.000 vnd',
                            "500m"),
                        service(
                            "https://storage.googleapis.com/f1-cms/2019/09/c7fa6c60-20190906_081453.png",
                            "Interior clean",
                            '1.000.000 vnd',
                            "500m"),
                        service(
                            "http://trungtamdaynghethanhxuan.vn/uploads/images/tong-quan-nghe-sua-chua-o-to-1.jpg",
                            "Polishing",
                            '2.000.000 vnd',
                            "500m"),
                        service(
                            "https://vavoluudong.net/wp-content/uploads/2019/12/thay-vo-lop-xe-oto-tai-nha.jpg",
                            "Tire repair",
                            '4.000.000 vnd',
                            "500m"),
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
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        station(
                            "https://c1.staticflickr.com/3/2795/32685566571_1d2a8f7e64_c.jpg",
                            "Z1 Auto Center",
                            "580 L?? V??n Kh????ng, P.Th???i An, Q. 12 , Tp. HCM",
                            5,
                            "500m"),
                        station(
                            "https://vsetgroup.com/uploads/product/z2049193823334_467b3a99072af1fea8310ff4903b9290.jpg",
                            "VS Auto Service",
                            "15 B??i Quang L??, P.12, Q. G?? V???p , Tp. HCM",
                            4.5,
                            "500m"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0mneaGT6tAcMelcIVqQAMhok4Ejiw0jm6_A&usqp=CAU",
                            "S???a Ch???a Oto TOTCOM",
                            "262 T?? Hi???u, H?? C???u, H?? ????ng , H?? N???i",
                            4.8,
                            "500m"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBQpiT-3q0WXTE-_p9UivYwX8ldh1jefoeYA&usqp=CAU",
                            "Auto H???u To??n",
                            "580 L?? V??n Kh????ng, P.Th???i An, Q. 12 , Tp. HCM",
                            4,
                            "500m"),
                        station(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_SNDu4yiDf-ak2wY_cBXQ3-gR2m7Pc6SwQw&usqp=CAU",
                            "Vi???n Auto",
                            "580 L?? V??n Kh????ng, P.Th???i An, Q. 12 , Tp. HCM",
                            4,
                            "500m"),
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
                    items: [
                      'http://thuanphatnhatrang.com/uploads/posts/phu_tung_t12.jpg?1638321879182',
                      'https://hondatancuong.com.vn/wp-content/uploads/2022/02/dang-tin-web-405x400.jpg',
                      'https://www.pjico.com.vn/wp-content/uploads/2016/09/1474342558213_8506718.jpg',
                      'https://static.carmudi.vn/wp-content/uploads/2019-11/o2w9czuRYB.jpg',
                      'http://thuanphatnhatrang.com/uploads/posts/53a8de7913d1de8f87c0_2.jpg?1643528224216'
                    ]
                        .map((item) => GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PromotionPage(); //Routing Home Page in here
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Image.network(item,
                                            fit: BoxFit.cover, width: 1000.0),
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapPage()));
        },
        tooltip: 'NearBy Station',
        child: const Icon(Icons.location_on),
      ),
    );
  }

  Widget service(String img, String title, String price, String distance) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DashboardScreen(
            ATitle: title,
          ); //Routing Home Page in here
        }));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.26,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.18,
              height: MediaQuery.of(context).size.width * 0.09,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(img), scale: 10, fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 10,
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
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              "Nearest: " + distance,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
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
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ))
      .toList();

  Widget station(String img, String title, String address, double rating,
      String distance) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return StationPage(); //Routing Home Page in here
        }));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.17,
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
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
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
            ),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 10,
              initialRating: rating,
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
            Text("Nearest: " + distance)
          ],
        ),
      ),
    );
  }
}
