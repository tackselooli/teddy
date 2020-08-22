import 'package:flutter/material.dart';
class DividerLine extends StatelessWidget {
  final double indent;

  const DividerLine({this.indent});
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black26,
      thickness: 1,
      endIndent: 10,
      indent: indent,
      height: 3,
    );
  }
}