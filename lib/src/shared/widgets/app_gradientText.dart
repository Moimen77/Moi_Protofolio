import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const GradientText(
    this.text, {
    super.key,
    this.fontSize = 32,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: [
              protofolioColors.primaryGradientStart,
              protofolioColors.primaryGradientEnd,
            ],
          ).createShader(
            const Rect.fromLTWH(0, 0, 300, 70),
          ),
      ),
    );
  }
}
