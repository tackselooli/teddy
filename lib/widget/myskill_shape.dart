import 'package:flutter/material.dart';
import '../widget/widget.dart';

class MySkillShape extends StatelessWidget {
  final bool shape;
  final List<Color> colors2;
  final List<double> stops2;
  final MediaQueryData deviceInfo;

  MySkillShape({this.deviceInfo, this.shape, this.colors2, this.stops2});

  @override
  Widget build(BuildContext context) {
    whichone(bool s) {
      if (s == true) {
        return BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: colors2,
            stops: stops2,
          ),
        );
      } else {
        return BoxDecoration(
            border: Border.all(
              color: Color(0xFFFD6175),
            ),
            color: Color(0xFFFEAC5E));
      }
    }

    return ClipPath(
      clipper: MySkillPath(shape: shape),
      child: Container(
          width: deviceInfo.size.width,
          height: deviceInfo.size.height * 1.5 / 6,
          decoration: whichone(shape)),
    );
  }
}
