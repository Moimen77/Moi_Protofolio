import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(20),
    this.radius = 30,
    required this.colors,
    this.glowColor,
    this.glowBlurRadius = 60,
    this.glowSpreadRadius = 20,
    this.glowOpacity = .4,
  });

  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final List<Color> colors;

  final Color? glowColor;
  final double glowBlurRadius;
  final double glowSpreadRadius;
  final double glowOpacity;

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          if (glowColor != null)
            BoxShadow(
              color: glowColor!.withValues(alpha: glowOpacity),
              blurRadius: glowBlurRadius,
              spreadRadius: glowSpreadRadius,
            ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colors,
              ),
              border: Border.all(
                color: protofolioColors.textPrimary.withOpacity(0.12),
                width: 1.2,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
