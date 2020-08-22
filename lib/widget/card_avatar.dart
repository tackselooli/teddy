import 'package:flutter/material.dart';
class CardAvatar extends StatelessWidget {
  IconData icon;
  Color color;
  String text;

  CardAvatar({@required this.icon, @required this.color,@required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 65,
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              child: Icon(
               icon,
            ),
              backgroundColor: color,
              foregroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(width: 4.5),
                color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Font1'),
          )
        ],
      ),
    );
  }
}
