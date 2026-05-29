import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/spAdabt.dart';
import 'package:moi_protofolio/src/imports/core_imports.dart';
import 'package:moi_protofolio/src/shared/widgets/AppGlassContainer.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onPressed,
      this.icon = Icons.home,
      this.size = 24,
      this.radius = 15,
      this.imagePath,
      this.imgColor});
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? imgColor;
  final String? imagePath;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    final bool iscircule = radius > 100;
    return GestureDetector(
      onTap: onPressed,
      child: GlassContainer(
        padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: iscircule ? 15 : 20),
        radius: radius,
        colors: [
          protofolioColors.textPrimary.withOpacity(0.12),
          protofolioColors.textPrimary.withOpacity(0.04),
        ],
        child: imagePath != null
            ? Image.asset(
                imagePath!,
                width: 12.spAdaptive(context),
                height: 12.spAdaptive(context),
                color: imgColor ?? protofolioColors.textPrimary,
              )
            : AppIcon(
                icon: icon,
                size: size,
                color: protofolioColors.textPrimary,
              ),
      ),
    );
  }
}
