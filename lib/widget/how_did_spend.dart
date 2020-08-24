import 'package:flutter/material.dart';

class HowDidSpendToday extends StatelessWidget {
  final IconData icon;
  final String title;
  final String percent;

  HowDidSpendToday({this.icon, this.title, this.percent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 6),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFF197DA5),
              child: Icon(
                icon,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          "$percent%",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}
