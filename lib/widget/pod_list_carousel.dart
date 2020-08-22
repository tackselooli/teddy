import 'package:flutter/material.dart';
import '../models/models.dart';
class PodListCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          OurData pood = data[index];
          return Container(
            margin: EdgeInsets.all(4.0),
            child: Stack(
              children: [
                Container(
                  width: 122,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(pood.podImgUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 20,
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(15.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                          Colors.black.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 8,
                          offset: Offset(3,
                              3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Wrap(
                        textDirection: TextDirection.rtl,
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            pood.namePod,
                            style: TextStyle(
                                fontFamily: "Font1",
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
