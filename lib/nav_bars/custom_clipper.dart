import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackgroundClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    const double initialCurvePoint = 42;
    const double curveOffset = 34;
    var initialTopCurveControlPoint = Offset(size.width / 2 - curveOffset, 3);
    var initialTopCurveEndPoint = Offset(size.width / 2 - curveOffset, 4);

    var outgoingTopCurveControlPoint = Offset(size.width / 2 + curveOffset, 3);
    var outgoingTopCurveEndPoint = Offset(size.width / 2 + initialCurvePoint, 0);

    var topValleyControlPoint = Offset(size.width / 2, size.height / 2);
    var topValleyEndPoint = Offset(size.width / 2 + curveOffset, 3);

    var initialBottomCurveControlPoint =
        Offset(size.width / 2 + curveOffset, size.height - 3);
    var initialBottomCurveEndPoint =
        Offset(size.width / 2 + curveOffset, size.height - 4);

    var outgoingBottomCurveControlPoint =
        Offset(size.width / 2 - curveOffset, size.height - 3);
    var outgoingBottomCurveEndPoint = Offset(size.width / 2 - initialCurvePoint, size.height);

    var bottomValleyControlPoint = Offset(size.width / 2, size.height / 2);
    var bottomValleyEndPoint = Offset(size.width / 2 - curveOffset, size.height - 3);

    var path = Path()

      // Top
      ..lineTo(0, 0)
      ..lineTo(size.width / 2 - initialCurvePoint, 0)

      // Initial top curved edge
      ..quadraticBezierTo(
          initialTopCurveControlPoint.dx,
          initialTopCurveControlPoint.dy,
          initialTopCurveEndPoint.dx,
          initialTopCurveEndPoint.dy)

      // Top valley
      ..quadraticBezierTo(topValleyControlPoint.dx, topValleyControlPoint.dy,
          topValleyEndPoint.dx, topValleyEndPoint.dy)

      // Outgoing top curved edge
      ..quadraticBezierTo(
          outgoingTopCurveControlPoint.dx,
          outgoingTopCurveControlPoint.dy,
          outgoingTopCurveEndPoint.dx,
          outgoingTopCurveEndPoint.dy)

      // top closing
      ..lineTo(size.width + initialCurvePoint, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)

      // Bottom
      ..lineTo(size.width / 2 + initialCurvePoint, size.height)

      // Initial bottom curved edge (from right)
      ..quadraticBezierTo(
          initialBottomCurveControlPoint.dx,
          initialBottomCurveControlPoint.dy,
          initialBottomCurveEndPoint.dx,
          initialBottomCurveEndPoint.dy)

      // Bottom valley
      ..quadraticBezierTo(
          bottomValleyControlPoint.dx,
          bottomValleyControlPoint.dy,
          bottomValleyEndPoint.dx,
          bottomValleyEndPoint.dy)

      // Outgoing bottom curved edge 9to left)
      ..quadraticBezierTo(
          outgoingBottomCurveControlPoint.dx,
          outgoingBottomCurveControlPoint.dy,
          outgoingBottomCurveEndPoint.dx,
          outgoingBottomCurveEndPoint.dy)

      // closing
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
