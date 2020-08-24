import 'package:flutter/material.dart';

class MySkillPath extends CustomClipper<Path> {
  bool shape;

  MySkillPath({this.shape});

  @override
  Path getClip(Size size) {
    Path path = Path();
    if (shape == true) {
      path.moveTo(size.width, 0);
      path.lineTo(0, size.height * 1 / 6);
      path.lineTo(0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, size.height * 1 / 6);
      path.close();
    } else {
      path.moveTo(0, 0);
      path.lineTo(size.width, size.height * 1 / 6);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, size.height * 1 / 6);
      path.close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
