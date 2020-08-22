import 'package:flutter/material.dart';
import '../models/models.dart';
class PodListCarousel extends StatelessWidget {

  double heightContainer;
  double w1;
  double h1;
  String img;
  String txt;
  PodListCarousel({this.heightContainer, this.w1, this.h1, this.img , this.txt});
  @override
  Widget build(BuildContext context) {
    checkImage(String image) {
      if (image == "img1"){
        return true;
      }else{
        return false;
      }
    }

    checkTxt (String text){
      if (text == "txt1"){
        return true;
      }else{
        return false;
      }
    }
    return Container(
      height: heightContainer,
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
                  width: w1,
                  height: h1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(
                          checkImage(img) ? pood.podImgUrl : pood.tutImgUrl
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 20,
                  right: 20,
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
                            checkTxt(txt) ? pood.namePod : pood.tutTitle,
                            style: TextStyle(
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
