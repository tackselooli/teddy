import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/widget.dart';
import '../models/models.dart';

import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      key: scaffoldKey,
      endDrawer: DrawerLayout(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: deviceInfo.size.width,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Container(
                      width: deviceInfo.size.width,
                      height: deviceInfo.size.height * 1.4 / 3,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.0),
                          topLeft: Radius.circular(50.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage("images/3541142.png"),
                            scale: 0.90),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.rotate(
                            angle: -90 * math.pi / 180,
                            child: FlatButton(
                              child: Icon(
                                Icons.label,
                                size: 30.0,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                              shape: CircleBorder(),
                              color: Colors.black12,
                              padding: EdgeInsets.all(10.0),
                            ),
                          ),
                          FlatButton(
                            child: Icon(
                              Icons.view_agenda,
                              size: 35.0,
                              color: Theme.of(context).accentColor,
                            ),
                            onPressed: () =>
                                scaffoldKey.currentState.openEndDrawer(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15.0,
                            right: 15.0,
                            top: deviceInfo.size.height / 15,
                            bottom: 15),
                        child: Container(
                          padding: EdgeInsets.only(right: 18.0, left: 18.0),
                          alignment: Alignment.centerRight,
                          height: 60.0,
                          width: deviceInfo.size.width - 50,
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: TextField(
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                FontAwesomeIcons.search,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                textBaseline: TextBaseline.alphabetic,
                              ),
                              hintText: 'جستجو',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11.0),
                        alignment: Alignment.center,
                        height: 120,
                        width: deviceInfo.size.width - 50,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.4),
                          color: Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: ListView.builder(
                          itemCount: cardListData.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            CardData card = cardListData[index];
                            return Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: CardAvatar(
                                icon: card.icon,
                                text: card.text,
                                color: card.color,
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
                        child: Container(
                          height: 75,
                          width: deviceInfo.size.width - 75,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: AssetImage("images/asset-21.png"),
                                fit: BoxFit.cover,
                                scale: 15,
                                alignment: Alignment.centerRight),
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 50.0),
                                child: Text(
                                  'سنجش\n سلامتی',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DividerTitle(
                        title: 'خانه آرام من',
                      ),
                      PodListCarousel(
                        heightContainer: 120.0,
                        h1: 100,
                        w1: 122,
                        img: "img1",
                        txt: "txt1",
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      DividerTitle(
                        title: 'ماهر شو',
                      ),
                      PodListCarousel(
                        heightContainer: 210.0,
                        h1: 180,
                        w1: 182,
                        img: "img2",
                        txt: "txt2",
                      ),
                      SizedBox(
                        height: 40.0,
                        child: Container(
                          height: 40.0,
                          width: double.infinity,
                          color: Color(0xFFF5F5F5),
                        ),
                      ),
                      DividerTitle(
                        title: 'خودتو بشناس',
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 260.0,
                        color: Color(0xFFF5F5F5),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Flexible(
                              child: Container(
                                width: 190.0,
                                height: 220.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("images/AdobeStock_-9.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              flex: 6,
                            ),
                            SizedBox(
                              width: 26.0,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/AdobeStock_65935647.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/AdobeStock_122073339.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
