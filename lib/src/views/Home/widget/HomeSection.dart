import 'package:moi_protofolio/src/imports/imports.dart';
import 'package:moi_protofolio/src/views/Home/widget/leftSide.dart';

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
        child: const Row(
          children: [
            LeftSide(),
            
          
          ],
        ));
  }
}
