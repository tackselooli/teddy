import 'package:flutter/material.dart';

class RegistryScreen extends StatefulWidget {
  @override
  _RegistryScreenState createState() => _RegistryScreenState();
}

class _RegistryScreenState extends State<RegistryScreen> {
  List<Color> _colors = [
    Color(0xFF453388),
    Color(0xFFFF6A7B),
    Color(0xFFFE9D65),
    Color(0xFFF9AF67),
    Color(0xFFBADDEA)
  ];
  List<double> _stops = [0.1, 0.45, 0.59, 0.75, .93];

  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: deviceInfo.size.height + 200,
              width: deviceInfo.size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: _colors,
                  stops: _stops,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "سنجش سلامتی",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Container(
                            height: deviceInfo.size.height * 9.5 / 10,
                            width: deviceInfo.size.width - 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image:
                                    AssetImage("images/corona - back - -1.png"),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 80, right: 15, left: 15, bottom: 10),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    RegTextField(
                                      text: "نام:",
                                    ),
                                    RegTextField(
                                      text: "نام خانوادگی:",
                                    ),
                                    RegTextField(
                                      text: "موبایل:",
                                      type: TextInputType.number,
                                    ),
                                    RegTextField(
                                      text: "استان:",
                                      width: 150,
                                      alignment: Alignment.centerRight,
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 8),
                                            child: Text(
                                              'جنسیت:',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        ButtonBar(
                                          alignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'زن',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Radio(
                                              value: 1,
                                              groupValue: selectedRadio,
                                              activeColor: Colors.green,
                                              onChanged: (val) {
                                                print('print $val');
                                                setSelectedRadio(val);
                                              },
                                            ),
                                            Text(
                                              'مرد',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Radio(
                                              value: 2,
                                              groupValue: selectedRadio,
                                              activeColor: Colors.green,
                                              onChanged: (val) {
                                                print('print $val');
                                                setSelectedRadio(val);
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: QadWazn(
                                          text: "قد: "
                                              "\n (cm)",
                                        )),
                                        Expanded(
                                            child: QadWazn(
                                          text: 'وزن:'
                                              "\n (kg)",
                                        )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'BMI شما 3.3 میباشد',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 45),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 4)),
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundImage: AssetImage(
                                      "images/8.png",
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "اطلاعات خود را وارد کنید:",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 59,
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Group 117.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QadWazn extends StatelessWidget {
  String text;

  QadWazn({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          alignment: Alignment.centerRight,
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          height: 45,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RegTextField extends StatelessWidget {
  String text;
  double width;
  AlignmentGeometry alignment;
  TextInputType type;

  RegTextField(
      {this.text,
      this.width: 300,
      this.type: TextInputType.text,
      this.alignment: Alignment.center});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 11),
      child: Column(
        children: [
          Align(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(
            height: 8,
          ),
          Align(
            alignment: alignment,
            child: Container(
              height: 45,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: TextField(
                  keyboardType: type,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
