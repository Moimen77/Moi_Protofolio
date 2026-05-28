import 'package:moi_protofolio/src/extensions/spAdabt.dart';
import 'package:moi_protofolio/src/imports/imports.dart';
import 'package:moi_protofolio/src/shared/widgets/app_gradientText.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;

    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 60,
        ),
        color: protofolioColors.background,
        child: Row(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText("Hi, I'm", fontSize: 13.spAdaptive(context)),
                    25.kH
                  ],
                )),
          ],
        ));
  }
}
