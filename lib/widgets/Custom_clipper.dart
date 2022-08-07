import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 10);
    var firststart = Offset(size.width / 7, size.height);
    var firstend = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        firststart.dx, firststart.dy, firstend.dx, firstend.dy);

    var seconndstart = Offset(size.width + 10, size.height);
    var secondend = Offset(size.width - 10, 0);
    path.quadraticBezierTo(
        seconndstart.dx, seconndstart.dy, secondend.dx, secondend.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
