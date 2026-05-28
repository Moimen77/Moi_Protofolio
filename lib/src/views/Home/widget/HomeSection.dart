import 'package:moi_protofolio/src/extensions/spAdabt.dart';
import 'package:moi_protofolio/src/imports/imports.dart';
import 'package:moi_protofolio/src/shared/widgets/app_Icon_Button.dart';
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
                    GradientText(
                      "Hi, I'm",
                      fontSize: 13.spAdaptive(context),
                      fontWeight: FontWeight.normal,
                    ),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Moimen ',
                          style: TextStyle(
                            fontSize: 20.spAdaptive(context),
                            fontWeight: FontWeight.bold,
                            color: protofolioColors.textPrimary,
                            letterSpacing: 1.7,
                          ),
                        ),
                        TextSpan(
                          text: 'Adel',
                          style: TextStyle(
                            fontSize: 20.spAdaptive(context),
                            fontWeight: FontWeight.bold,
                            color: protofolioColors.primaryGradientStart,
                          ),
                        )
                      ],
                    )),
                    15.kH,
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.spAdaptive(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    15.kH,
                    const SizedBox(
                      width: 450,
                      child: Text(
                        'I build beautiful, fast and scalable cross-platform applications with Flutter & modern technologies.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          height: 1.7,
                        ),
                      ),
                    ),
                    15.kH,
                    Row(
                      children: [
                        AppButton(
                          label: 'View Projects',
                          variant: ButtonVariant.primary,
                          height: ButtonSize.small,
                          suffixIcon: Icon(Icons.arrow_outward_rounded,
                              size: 10.spAdaptive(context)),
                          onPressed: () {
                            // Handle contact action
                          },
                        ),
                        15.kW,
                        AppButton(
                          label: 'Download CV',
                          variant: ButtonVariant.outline,
                          height: ButtonSize.small,
                          suffixIcon: Icon(Icons.download_rounded,
                              size: 10.spAdaptive(context)),
                          onPressed: () {
                            // Handle contact action
                          },
                        ),
                        10.kW,
                        AppIconButton(
                          icon: Icons.email_outlined,
                          size: 10.spAdaptive(context),
                          onPressed: () {
                            // Handle contact action
                          },
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
