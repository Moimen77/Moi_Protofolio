import 'package:dotted_border/dotted_border.dart';
import 'package:moi_protofolio/src/extensions/spAdabt.dart';
import 'package:moi_protofolio/src/imports/imports.dart';
import 'package:moi_protofolio/src/shared/widgets/AppGlassContainer.dart';
import 'package:moi_protofolio/src/views/Home/widget/TeckCard.dart';
import 'package:moi_protofolio/src/views/Home/widget/leftSide.dart';
import 'package:moi_protofolio/src/views/Home/widget/statSection.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final protofolioColors = context.portfolio;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 60,
      ),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              color: protofolioColors.background,
              child: Row(
                children: [
                  const LeftSide(),
                  Expanded(
                    flex: 4,
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 330,
                            height: 330,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                            ),
                          ),
                          DottedBorder(
                            borderType: BorderType.Circle,
                            color: Colors.deepPurple.withOpacity(0.42),
                            strokeWidth: 1.7,
                            dashPattern: const [1, 3], // 10 خط - 5 فراغ
                            child: const SizedBox(
                              width: 400,
                              height: 400,
                            ),
                          ),
                          const Teckcard(
                            imagePath: 'assets/images/Flutter.png',
                            top: 10,
                            left: 15,
                          ),
                          const Teckcard(
                            imagePath: 'assets/images/Firebase.png',
                            top: 10,
                            left: 310,
                          ),
                          const Teckcard(
                            imagePath: 'assets/images/code.png',
                            top: 300,
                            left: 320,
                          ),
                          Positioned(
                            top: 100,
                            left: -2,
                            child: GlassContainer(
                              colors: [
                                protofolioColors.primaryGradientStart,
                                protofolioColors.primaryGradientEnd,
                              ],
                              glowColor: protofolioColors.primaryGradientStart,
                              glowBlurRadius: 30,
                              glowSpreadRadius: 10,
                              glowOpacity: 0.3,
                              padding: EdgeInsets.zero,
                              radius: 200,
                              child: SizedBox(
                                width: 5.spAdaptive(context),
                                height: 5.spAdaptive(context),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 300,
                            left: -2,
                            child: GlassContainer(
                              colors: [
                                protofolioColors.primaryGradientStart,
                                protofolioColors.primaryGradientEnd,
                              ],
                              glowColor: protofolioColors.primaryGradientStart,
                              glowBlurRadius: 30,
                              glowSpreadRadius: 10,
                              glowOpacity: 0.3,
                              padding: EdgeInsets.zero,
                              radius: 200,
                              child: SizedBox(
                                width: 3.spAdaptive(context),
                                height: 3.spAdaptive(context),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 340,
                            left: 55,
                            child: GlassContainer(
                              colors: [
                                protofolioColors.primaryGradientStart,
                                protofolioColors.primaryGradientEnd,
                              ],
                              glowColor: protofolioColors.primaryGradientStart,
                              glowBlurRadius: 30,
                              glowSpreadRadius: 10,
                              glowOpacity: 0.3,
                              padding: EdgeInsets.zero,
                              radius: 200,
                              child: SizedBox(
                                width: 4.spAdaptive(context),
                                height: 4.spAdaptive(context),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 270,
                            child: GlassContainer(
                              colors: [
                                protofolioColors.primaryGradientStart,
                                protofolioColors.primaryGradientEnd,
                              ],
                              glowColor: protofolioColors.primaryGradientStart,
                              glowBlurRadius: 30,
                              glowSpreadRadius: 10,
                              glowOpacity: 0.3,
                              padding: EdgeInsets.zero,
                              radius: 200,
                              child: SizedBox(
                                width: 4.spAdaptive(context),
                                height: 4.spAdaptive(context),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 420,
                            child: GlassContainer(
                              colors: [
                                protofolioColors.primaryGradientStart,
                                protofolioColors.primaryGradientEnd,
                              ],
                              glowColor: protofolioColors.primaryGradientStart,
                              glowBlurRadius: 30,
                              glowSpreadRadius: 10,
                              glowOpacity: 0.3,
                              padding: EdgeInsets.zero,
                              radius: 200,
                              child: SizedBox(
                                width: 3.spAdaptive(context),
                                height: 3.spAdaptive(context),
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 150,
                            backgroundImage: AssetImage(
                              'assets/images/Moi.jpg',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          25.kH,
          const StatsSection(),
        ],
      ),
    );
  }
}
