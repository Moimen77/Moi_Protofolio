import 'package:get/get.dart';
import 'package:moi_protofolio/src/imports/core_imports.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final current = _buildMaterialApp(context);
    return ScreenUtilWrapper(child: current);
  }

  Widget _buildMaterialApp(BuildContext context) {
    return GetMaterialApp(
      title: 'moi_protofolio',
      debugShowCheckedModeBanner: false,
      theme: buildDarkTheme(primaryColorHex: '#09081c'),
      initialRoute: AppRoutes.home,
      getPages: AppRouter.getPages,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        Widget current = child!;
        current = SkeletonWrapper(child: current);
        return current;
      },
    );
  }
}
