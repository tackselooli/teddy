import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/widget.dart';

class DrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _DrawerClipper(),
      child: Opacity(
        opacity: 0.90,
        child: Drawer(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 50.0, right: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'نهال برومند',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              letterSpacing: -2,
                            ),
                          ),
                          Text(
                            'ادمین',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                              letterSpacing: -2,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black45, width: 3.0),
                          image: DecorationImage(
                            image: AssetImage('images/asset-22.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DividerLine(
                          indent: 50,
                        ),
                        DrawerItem(
                          text: 'عنوان',
                          onPressed: () => print('12'),
                          icon: Icons.notifications_active,
                        ),
                        DividerLine(
                          indent: 50,
                        ),
                        DrawerItem(
                          text: 'لیست کارهای من',
                          onPressed: () => print('12'),
                          icon: Icons.library_books,
                        ),
                        DividerLine(
                          indent: 50,
                        ),
                        DrawerItem(
                          text: 'گردونه شانس',
                          onPressed: () => print('12'),
                          icon: Icons.rate_review,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                        DrawerItem(
                          text: 'درباره ما',
                          onPressed: () => print('12'),
                          icon: Icons.info_outline,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                        DrawerItem(
                          text: 'سوالات متداول',
                          onPressed: () => print('12'),
                          icon: Icons.event_note,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                        DrawerItem(
                          text: 'تماس با ما',
                          onPressed: () => print('12'),
                          icon: Icons.contact_phone,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                        DrawerItem(
                          text: 'تنظیمات',
                          onPressed: () => print('12'),
                          icon: Icons.settings,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                        DrawerItem(
                          text: 'خروج',
                          onPressed: () => print('12'),
                          icon: Icons.exit_to_app,
                        ),
                        DividerLine(
                          indent: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(100, 0);
    path.quadraticBezierTo(-50, size.height / 2, 100, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}



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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.black87,),
            SizedBox(width: 15,),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}


class DividerLine extends StatelessWidget {
  final double indent;

  const DividerLine({this.indent});
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black26,
      thickness: 1,
      endIndent: indent,
      indent: 10,
      height: 3,
    );
  }
}