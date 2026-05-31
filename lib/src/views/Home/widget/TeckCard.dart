import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';
import 'package:moi_protofolio/src/extensions/spAdabt.dart';
import 'package:moi_protofolio/src/shared/widgets/AppGlassContainer.dart';

class Teckcard extends StatelessWidget {
  const Teckcard(
      {super.key,
      required this.imagePath,
      required this.top,
      required this.left});
  final String imagePath;
  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return Positioned(
      top: top,
      left: left,
      child: GlassContainer(
        colors: [
          protofolioColors.background.withOpacity(0.25),
          protofolioColors.background.withOpacity(0.15),
        ],
        padding: const EdgeInsets.all(15),
        radius: 200,
        child: Image.asset(
          imagePath,
          width: 15.spAdaptive(context),
          height: 15.spAdaptive(context),
        ),
      ),
    );
  }
}
