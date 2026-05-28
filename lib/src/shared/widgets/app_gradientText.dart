import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;

  const GradientText(
    this.text, {
    super.key,
    this.fontSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
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
