import 'package:base_getx/base.dart';
import 'package:travel/views/splash/controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
