import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodcastWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15),),
            child: Image.asset("images/AdobeStock_-8.png", fit: BoxFit.cover),
          ),
        ),
        Card(
          elevation: 5,
          margin: EdgeInsets.only(right: 16, left: 16, bottom: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "عنوان پادکست خیلی طولانی 2 خطی",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
