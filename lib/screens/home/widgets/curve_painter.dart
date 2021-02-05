import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurvePainter extends CustomPainter {
  final int week;
  CurvePainter({this.week});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;

    var startPoint = Offset(0, size.height / 3);
    var controlPoint1 = Offset(size.width / 4, size.height / 2);
    var controlPoint2 = Offset(3 * size.width / 4, size.height / 2);
    var endPoint = Offset(size.width, 0);

    var path = Path();
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    var paint1 = Paint()
      ..color = Color(0xFFFFFFFF)
      ..style = PaintingStyle.fill;
    //a circle
    double x = 0.0;
    double y = 0.0;
    if (week > 0 && week < 3) {
      x = (Get.width - controlPoint1.dx) / 6;
      y = (Get.height - size.height) / 22;
    } else if (week > 3 && week < 6) {
      x = Get.width / 2;
      y = size.height / 2.5;
    } else {
      x = Get.width;
      y = 0;
    }

    canvas.drawCircle(Offset(x, y), 15, paint1);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
