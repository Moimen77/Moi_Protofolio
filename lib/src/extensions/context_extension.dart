import 'package:flutter/material.dart';
import 'package:moi_protofolio/src/theme/ProtofolioColors.dart';

import '../theme/color_schemes.dart';
import '../theme/theme.dart';
import '../shared/enums/snack_bar_type.dart';

extension ContextExtension on BuildContext {
  // ── Theme shortcuts ──────────────────────────────────────────────────────
  ThemeData get apptTheme => Theme.of(this);
  TextTheme get typography => apptTheme.textTheme;
  TextTheme get textTheme => apptTheme.textTheme;
  ColorScheme get colors => apptTheme.colorScheme;
  bool get isDarkMode => apptTheme.brightness == Brightness.dark;
  PortfolioColors get portfolio => apptTheme.extension<PortfolioColors>()!;

  /// Semantic/custom colors (success, warning, info).
  AppColorsExtension get appColors =>
      apptTheme.extension<AppColorsExtension>() ??
      (isDarkMode ? AppPalettes.dark : AppPalettes.light);

  /// Design tokens (spacing, border radii, elevation defaults).
  AppDesignTokens get designTokens =>
      apptTheme.extension<AppDesignTokens>() ?? AppDesignTokens.fallback;

  // ── MediaQuery shortcuts ─────────────────────────────────────────────────
  Size get mediaQuerySize => MediaQuery.sizeOf(this);
  Size get screenSize => mediaQuerySize;
  double get width => mediaQuerySize.width;
  double get height => mediaQuerySize.height;

  /// Safe-area insets for the current view.
  EdgeInsets get safeArea => MediaQuery.paddingOf(this);

  // ── Keyboard ──────────────────────────────────────────────────────────────
  bool get isKeyboardVisible => MediaQuery.viewInsetsOf(this).bottom > 0;
  void hideKeyboard() => FocusScope.of(this).unfocus();

  // ── Platform ─────────────────────────────────────────────────────────────
  bool get isIOS => apptTheme.platform == TargetPlatform.iOS;
  bool get isAndroid => apptTheme.platform == TargetPlatform.android;

  // ── Overlays ─────────────────────────────────────────────────────────────
  void showSnackBar(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          action: action,
          duration: duration,
        ),
      );
  }

  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: appColors.success,
        ),
      );
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: colors.error,
        ),
      );
  }

  Future<T?> showAppBottomSheet<T>({
    required WidgetBuilder builder,
    bool isScrollControlled = true,
    bool useSafeArea = true,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      builder: builder,
      isScrollControlled: isScrollControlled,
      useSafeArea: useSafeArea,
    );
  }

  Future<T?> showAppDialog<T>({required WidgetBuilder builder}) {
    return showDialog<T>(
      context: this,
      builder: builder,
    );
  }

  /// Shows a snackbar with a colour driven by [SnackBarType].
  ///
  /// ```dart
  /// context.showTypedSnackBar('Saved!', type: SnackBarType.success);
  /// ```
  void showTypedSnackBar(
    String message, {
    SnackBarType type = SnackBarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    final bg = switch (type) {
      SnackBarType.success => appColors.success,
      SnackBarType.warning => appColors.warning,
      SnackBarType.error => colors.error,
      SnackBarType.info => colors.inverseSurface,
    };
    ScaffoldMessenger.of(this)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: bg,
          duration: duration,
        ),
      );
  }

  // ── Routing shortcuts ────────────────────────────────────────────────────
}
