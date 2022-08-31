import 'package:base_getx/base.dart';
import 'package:travel/views/home_navigate/binding.dart';
import 'package:travel/views/home_navigate/view.dart';
import 'package:travel/views/sign_in/index.dart';
import 'package:travel/views/sign_up/index.dart';

import '../views/splash/index.dart';

class RouteNames {
  RouteNames._();

  static const initial = '/';
  static const home = '/home';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
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
      GetPage(
        name: RouteNames.signUp,
        page: () => const SignUpScreen(),
        binding: SignUpBinding(),
      ),
      GetPage(
        name: RouteNames.signIn,
        page: () => const SignInScreen(),
        binding: SignInBinding(),
      ),
    ];
  }
}
