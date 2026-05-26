/// Centralized route name constants for named Navigator routes.
///
/// Use these constants with `Navigator.pushNamed(context, AppRoutes.onboarding)`
/// instead of inline strings to prevent typos and ease refactoring.
abstract final class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String home = '/';
}
