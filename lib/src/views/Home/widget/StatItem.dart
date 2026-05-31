import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';
import 'package:moi_protofolio/src/models/statModel.dart';
import 'package:moi_protofolio/src/shared/widgets/AppGlassContainer.dart';

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.model,
    required this.cololrsGradient,
  });

  final StatModel model;
  final List<Color> cololrsGradient;

  @override
  Widget build(BuildContext context) {
    final colors = context.portfolio;

    return Row(
      children: [
        GlassContainer(
          padding: const EdgeInsets.all(12),
          radius: 20,
          colors: cololrsGradient,
          child: Icon(
            model.icon,
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              model.label,
              style: TextStyle(
                color: colors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
