import 'package:flutter/material.dart';

class TriangleWithWarningIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      child: Stack(
        children: [
          CustomPaint(
            painter: TrianglePainterWithShadow(),
          ),
          Center(
            child: Icon(
              Icons.warning,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class TrianglePainterWithShadow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 5);

    final Path shadowPath = Path();
    shadowPath.moveTo(size.width / 2, 0);
    shadowPath.lineTo(size.width, size.height);
    shadowPath.lineTo(0, size.height);
    shadowPath.close();

    canvas.drawShadow(shadowPath, Colors.red, 5.0, true);

    final Paint trianglePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Path trianglePath = Path();
    trianglePath.moveTo(0, size.height);
    trianglePath.lineTo(size.width / 2, 0);
    trianglePath.lineTo(size.width, size.height);
    trianglePath.close();

    canvas.drawPath(trianglePath, trianglePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
