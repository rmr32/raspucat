import 'package:raspucat/utils/constants/exports.dart';

class TrianglePainter extends CustomPainter {
  TrianglePainter(
    this.color, {
    this.strokeWidth = 1.0,
    this.isHovered = false,
    this.gradientDirection = 0,
  });

  final Color color;
  final double strokeWidth;
  final bool isHovered;
  final int gradientDirection;

  @override
  void paint(Canvas canvas, Size size) {
    if (isHovered) {
      // Draw glow effect first (behind the main triangle)
      final glowPaint = Paint()
        ..color = color.withOpacity(0.3)
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth + 2
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

      final glowPath = Path();
      glowPath.moveTo(size.width / 2, 0);
      glowPath.lineTo(0, size.height);
      glowPath.lineTo(size.width, size.height);
      glowPath.close();
      canvas.drawPath(glowPath, glowPaint);
    }

    // Create gradient for the triangle based on direction
    Alignment begin, end;
    switch (gradientDirection) {
      case 0: // Top to bottom
        begin = Alignment.topCenter;
        end = Alignment.bottomCenter;
        break;
      case 1: // Right to left
        begin = Alignment.centerRight;
        end = Alignment.centerLeft;
        break;
      case 2: // Bottom to top
        begin = Alignment.bottomCenter;
        end = Alignment.topCenter;
        break;
      case 3: // Left to right
        begin = Alignment.centerLeft;
        end = Alignment.centerRight;
        break;
      default:
        begin = Alignment.topCenter;
        end = Alignment.bottomCenter;
    }

    final gradient = LinearGradient(
      begin: begin,
      end: end,
      colors: [
        color.withOpacity(0.1), // Start corner - very transparent
        color.withOpacity(0.5), // Middle - semi-transparent
        color, // End corners - full opacity
      ],
      stops: const [0.0, 0.4, 1.0], // Smooth gradient transition
    );

    // Create gradient paint
    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
