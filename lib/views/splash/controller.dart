import 'package:base_getx/controller/base_controller.dart';
import 'package:travel/routes/routes.dart';

class SplashController extends BaseController {
  navigateSignIn() {
    Get.toNamed(RouteNames.signIn);
  }

  navigateSignUp() {
    Get.toNamed(RouteNames.signUp);
  }
}
