import 'package:flutter/material.dart';
class DividerTitle extends StatelessWidget {

  String title;
  DividerTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                thickness: 6.8,
                color: Color(0xFFFD417F),
              ),
            ),
            SizedBox(width: 10.0,),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Font1",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
