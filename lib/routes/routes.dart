import 'package:base_getx/base.dart';

import '../views/splash/index.dart';

class RouteNames {
  RouteNames._();

  static const initial = '/';
}

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouteNames.initial,
        page: () => const SplashScreen(),
        binding: SplashBinding(),
      ),
    ];
  }
}
