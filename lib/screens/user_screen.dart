import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/widget.dart';

class UserScreen extends StatelessWidget {
  static const String id = "USERSCREEN";
  List<Color> _colors = [Color(0xFFFEAE8F), Color(0xFFB4E0F6)];
  List<double> _stops = [0.65, 0.95];

  List<Color> _colors2 = [Color(0xFFFD6175), Color(0xFFFEAC5E)];
  List<double> _stops2 = [0.2, 0.70];

  @override

  /// vase responsive kardane header e page :))
  Widget build(BuildContext context) {
    check(bool aa) {
      return Row(
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: aa == true
                ? EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1 / 10,
                    right: 50,
                  )
                : EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 1 / 22,
                    right: 80,
                  ),
            child: Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4)),
              child: CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage(
                  "images/8.png",
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(11.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "نهال برومند",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  "ادمین",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: HeaderPath(),
                          child: Container(
                            width: deviceInfo.size.width,
                            height: deviceInfo.size.height * 1.5 / 6,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: _colors,
                                stops: _stops,
                              ),
                            ),
                          ),
                        ),
                        deviceInfo.orientation == Orientation.portrait
                            ? check(true)
                            : check(false),
                        Positioned(
                          top: 55,
                          left: 10,
                          child: Transform.rotate(
                            angle: 90 * math.pi / 180,
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
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Container(
                    margin: EdgeInsets.all(11),
                    width: deviceInfo.size.width - 70,
                    height: deviceInfo.size.width / 4.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 6,
                          blurRadius: 9,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 11, horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: TimeOfWhat(
                              text: "کار انجام نشد",
                              h: "11",
                              size: 60,
                            ),
                          ),
                          VerticalDivider(
                            width: 10,
                            thickness: 1,
                          ),
                          Expanded(
                            child: TimeOfWhat(
                              text: "زمان حضورت",
                              h: "5:26",
                              size: 35,
                            ),
                          ),
                          VerticalDivider(
                            width: 10,
                            thickness: 1,
                          ),
                          Expanded(
                            child: TimeOfWhat(
                              text: "سنجش سلامتیه",
                              h: "امروز وقت",
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        thickness: 6.8,
                        color: Color(0xFFFD417F),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 12),
                      child: Text(
                        "امروز رو چطور گذروندم",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: Divider(
                        thickness: 6.8,
                        color: Color(0xFFFD417F),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 5),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: deviceInfo.size.width,
                    height: deviceInfo.size.height * 1.2 / 3,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 7,
                      spacing: 7,
                      runAlignment: WrapAlignment.center,
                      children: [
                        HowDidSpendToday(
                          icon: Icons.directions_run,
                          title: "ورزش کن",
                          percent: "40",
                        ),
                        HowDidSpendToday(
                          icon: Icons.fastfood,
                          title: "آشپز شو",
                          percent: "40",
                        ),
                        HowDidSpendToday(
                          icon: Icons.child_care,
                          title: "انیمیشن ببین",
                          percent: "40",
                        ),
                        HowDidSpendToday(
                          icon: Icons.headset,
                          title: "آرام شو",
                          percent: "40",
                        ),
                        HowDidSpendToday(
                          icon: Icons.work,
                          title: "کارهای امروز",
                          percent: "40",
                        ),
                        HowDidSpendToday(
                          icon: Icons.text_rotation_angleup,
                          title: "ماهر شو",
                          percent: "40",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: deviceInfo.orientation == Orientation.portrait
                      ? deviceInfo.size.height / 2
                      : deviceInfo.size.height,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      /// :))
                      MySkillShape(
                        deviceInfo: deviceInfo,
                        shape: false,
                        colors2: _colors2,
                        stops2: _stops2,
                      ),
                      MySkillShape(
                        deviceInfo: deviceInfo,
                        shape: true,
                        colors2: _colors2,
                        stops2: _stops2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 11),
                            child: Text(
                              "مهارت های من",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: deviceInfo.size.width / 2,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                6,
                                (index) {
                                  return Container(
                                    height: deviceInfo.size.width / 2,
                                    child: Center(child: PodcastWidget())
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35, right: 9, left: 9),
                  child: DividerTitle(
                    title: "شناخت از خودم",
                    color: 0xFFFFFFFF,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 9, left: 9),
                  height: deviceInfo.size.height / 2.9,
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    childAspectRatio: 1.6,
                    children: List.generate(6, (index) {
                      return Container(
                        height: 50,
                        width: 33,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: .05,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            image: AssetImage('images/AdobeStock_-4.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimeOfWhat extends StatelessWidget {
  String text;
  String h;
  double size;

  TimeOfWhat({this.text, this.h, this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            h,
            style: TextStyle(fontSize: size),
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 2 / 3);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
