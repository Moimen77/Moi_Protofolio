import 'package:flutter/material.dart';

/// App-specific colors that aren't part of the standard [ColorScheme].
/// Access via `context.appColors` (defined in `context_extension.dart`).
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.info,
    required this.onInfo,

    // Stats gradients
    required this.rocketStart,
    required this.rocketEnd,
    required this.calendarStart,
    required this.calendarEnd,
    required this.codeStart,
    required this.codeEnd,
    required this.starStart,
    required this.starEnd,
    this.successContainer,
    this.onSuccessContainer,
    this.warningContainer,
    this.onWarningContainer,
    this.infoContainer,
    this.onInfoContainer,
  });

  // Semantic colors
  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color info;
  final Color onInfo;

  // Stats gradients
  final Color rocketStart;
  final Color rocketEnd;

  final Color calendarStart;
  final Color calendarEnd;

  final Color codeStart;
  final Color codeEnd;

  final Color starStart;
  final Color starEnd;

  final Color? successContainer;
  final Color? onSuccessContainer;
  final Color? warningContainer;
  final Color? onWarningContainer;
  final Color? infoContainer;
  final Color? onInfoContainer;

  @override
  AppColorsExtension copyWith({
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? info,
    Color? onInfo,
    Color? rocketStart,
    Color? rocketEnd,
    Color? calendarStart,
    Color? calendarEnd,
    Color? codeStart,
    Color? codeEnd,
    Color? starStart,
    Color? starEnd,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? infoContainer,
    Color? onInfoContainer,
  }) {
    return AppColorsExtension(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      rocketStart: rocketStart ?? this.rocketStart,
      rocketEnd: rocketEnd ?? this.rocketEnd,
      calendarStart: calendarStart ?? this.calendarStart,
      calendarEnd: calendarEnd ?? this.calendarEnd,
      codeStart: codeStart ?? this.codeStart,
      codeEnd: codeEnd ?? this.codeEnd,
      starStart: starStart ?? this.starStart,
      starEnd: starEnd ?? this.starEnd,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
    );
  }

  @override
  AppColorsExtension lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      rocketStart: Color.lerp(rocketStart, other.rocketStart, t)!,
      rocketEnd: Color.lerp(rocketEnd, other.rocketEnd, t)!,
      calendarStart: Color.lerp(calendarStart, other.calendarStart, t)!,
      calendarEnd: Color.lerp(calendarEnd, other.calendarEnd, t)!,
      codeStart: Color.lerp(codeStart, other.codeStart, t)!,
      codeEnd: Color.lerp(codeEnd, other.codeEnd, t)!,
      starStart: Color.lerp(starStart, other.starStart, t)!,
      starEnd: Color.lerp(starEnd, other.starEnd, t)!,
      successContainer: Color.lerp(successContainer, other.successContainer, t),
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t),
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t),
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t),
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t),
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t),
    );
  }
}

/// Helper class to define the actual color palettes
class AppPalettes {
  AppPalettes._();

  static const light = AppColorsExtension(
    success: Color(0xFF2E7D32),
    onSuccess: Colors.white,
    successContainer: Color(0xFFA5D6A7),
    onSuccessContainer: Color(0xFF1B5E20),

    warning: Color(0xFFED6C02),
    onWarning: Colors.white,
    warningContainer: Color(0xFFFFCC80),
    onWarningContainer: Color(0xFFE65100),

    info: Color(0xFF0288D1),
    onInfo: Colors.white,
    infoContainer: Color(0xFF81D4FA),
    onInfoContainer: Color(0xFF01579B),

    // Projects
    rocketStart: Color(0xffA855F7),
    rocketEnd: Color(0xff7C3AED),

    // Experience
    calendarStart: Color(0xff60A5FA),
    calendarEnd: Color(0xff2563EB),

    // Code
    codeStart: Color(0xff34D399),
    codeEnd: Color(0xff10B981),

    // Feedback
    starStart: Color(0xffFBBF24),
    starEnd: Color(0xffF97316),
  );

  static const dark = AppColorsExtension(
    success: Color(0xFF81C784),
    onSuccess: Color(0xFF003300),
    successContainer: Color(0xFF1B5E20),
    onSuccessContainer: Color(0xFFA5D6A7),

    warning: Color(0xFFFFB74D),
    onWarning: Color(0xFF5D4037),
    warningContainer: Color(0xFFE65100),
    onWarningContainer: Color(0xFFFFCC80),

    info: Color(0xFF4FC3F7),
    onInfo: Color(0xFF01579B),
    infoContainer: Color(0xFF0277BD),
    onInfoContainer: Color(0xFFE1F5FE),

    // Projects
    rocketStart: Color(0xffA855F7),
    rocketEnd: Color(0xff7C3AED),

    // Experience
    calendarStart: Color(0xff60A5FA),
    calendarEnd: Color(0xff2563EB),

    // Code
    codeStart: Color(0xff34D399),
    codeEnd: Color(0xff10B981),

    // Feedback
    starStart: Color(0xffFBBF24),
    starEnd: Color(0xffF97316),
  );
}
