import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String text;
  final Function onPressed;
  final IconData icon;

  const DrawerItem({this.text, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontFamily: "Font1",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 15,),
            Icon(icon, color: Colors.black87,),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
