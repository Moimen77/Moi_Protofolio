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
  });

  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return ClipRRect(
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

            // glass gradient
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors,
            ),

            // border
            border: Border.all(
              color: protofolioColors.textPrimary.withOpacity(0.12),
              width: 1.2,
            ),

            // glow shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
