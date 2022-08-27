import 'package:base_getx/base.dart';
import 'package:travel/views/home/index.dart';
import 'package:travel/views/home_navigate/binding.dart';
import 'package:travel/views/home_navigate/view.dart';

import '../views/splash/index.dart';

class RouteNames {
  RouteNames._();

  static const initial = '/';
  static const home = '/home';
}

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouteNames.initial,
        page: () => const SplashScreen(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: RouteNames.home,
        page: () => const HomeNavigateScreen(),
        binding: HomeNavigateBinding(),
      ),
    ];
  }
}
