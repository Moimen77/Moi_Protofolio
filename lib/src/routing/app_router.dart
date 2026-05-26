// ignore_for_file: strict_raw_type

import 'package:moi_protofolio/src/imports/imports.dart';
import 'package:moi_protofolio/src/views/Home/HomeScreen.dart';

class AppRouter {
  static List<GetPage> get getPages => [
        GetPage(
          name: AppRoutes.home,
          page: () => const HomePage(),
        ),
      ];
}
