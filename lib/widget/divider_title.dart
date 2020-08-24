import 'package:flutter/material.dart';
class DividerTitle extends StatelessWidget {
  int color;
  String title;
  DividerTitle({this.title, this.color = 0xFFF5F5F5 });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(color),
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(width: 10.0,),
            Flexible(
              child: Divider(
                thickness: 6.8,
                color: Color(0xFFFD417F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}