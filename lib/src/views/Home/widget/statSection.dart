import 'package:flutter/widgets.dart';
import 'package:moi_protofolio/src/extensions/context_extension.dart';
import 'package:moi_protofolio/src/models/statModel.dart';
import 'package:moi_protofolio/src/views/Home/widget/StatItem.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.portfolio;
    final gradColors = context.appColors;
    final List<List<Color>> gradients = [
      [
        gradColors.rocketStart.withOpacity(0.3),
        gradColors.rocketEnd.withOpacity(0.3)
      ],
      [
        gradColors.calendarStart.withOpacity(0.3),
        gradColors.calendarEnd.withOpacity(0.3)
      ],
      [
        gradColors.codeStart.withOpacity(0.3),
        gradColors.codeEnd.withOpacity(0.3)
      ],
      [
        gradColors.starStart.withOpacity(0.3),
        gradColors.starEnd.withOpacity(0.3)
      ],
    ];

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 28,
      ),
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: colors.glassBorder,
        ),
        boxShadow: [
          BoxShadow(
            color: colors.glowPurple.withValues(
              alpha: .08,
            ),
            blurRadius: 40,
          ),
        ],
      ),
      child: Row(
        children: StatModel.stats
            .map(
              (e) => Expanded(
                child: StatItem(
                  model: e,
                  cololrsGradient: gradients[StatModel.stats.indexOf(e)],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
