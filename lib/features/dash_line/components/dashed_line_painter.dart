import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final Axis axis;
  final double dashThickness; 
  final double dashLength;    
  final double leadingPadding;
  final double trailingPadding;
  final Color color;

  DashedLinePainter({
    this.axis = Axis.vertical,
    this.dashThickness = 2.0,
    this.dashLength = 4.0,
    this.leadingPadding = 0.0,
    this.trailingPadding = 0.0,
    this.color = Colors.grey,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    // The space between dashes will be equal to their length for a classic dashed look
    final double dashSpace = dashLength;

    if (axis == Axis.vertical) {
      double startY = leadingPadding;
      final double endY = size.height - trailingPadding;
      // Center the vertical line horizontally
      final double xOffset = (size.width - dashThickness) / 2;

      while (startY < endY) {
        if (startY + dashLength > endY) break; // Ensure we don't draw past the padded area

        // Draw a rectangle for the dash
        canvas.drawRect(
          Rect.fromLTWH(xOffset, startY, dashThickness, dashLength),
          paint,
        );
        startY += dashLength + dashSpace;
      }
    } else { // Horizontal
      double startX = leadingPadding;
      final double endX = size.width - trailingPadding;
      // Center the horizontal line vertically
      final double yOffset = (size.height - dashThickness) / 2;

      while (startX < endX) {
        if (startX + dashLength > endX) break; // Ensure we don't draw past the padded area

        // Draw a rectangle for the dash
        canvas.drawRect(
          Rect.fromLTWH(startX, yOffset, dashLength, dashThickness),
          paint,
        );
        startX += dashLength + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant DashedLinePainter oldDelegate) {
    // Only repaint if properties have actually changed
    return oldDelegate.axis != axis ||
        oldDelegate.dashThickness != dashThickness ||
        oldDelegate.dashLength != dashLength ||
        oldDelegate.leadingPadding != leadingPadding ||
        oldDelegate.trailingPadding != trailingPadding ||
        oldDelegate.color != color;
  }
}
