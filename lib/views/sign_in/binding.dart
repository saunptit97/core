import 'package:base_getx/controller/base_controller.dart';

import 'index.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
