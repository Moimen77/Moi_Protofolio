import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/imports/core_imports.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onPressed,
      this.icon = Icons.home,
      this.size = 24,
      this.radius = 15});
  final VoidCallback? onPressed;
  final IconData icon;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    final bool iscircule = radius > 100;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: iscircule ? 15 : 20),
        decoration: BoxDecoration(
          border: Border.all(color: protofolioColors.textPrimary, width: 1.5),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: AppIcon(
          icon: icon,
          size: size,
          color: protofolioColors.textPrimary,
        ),
      ),
    );
  }
}
