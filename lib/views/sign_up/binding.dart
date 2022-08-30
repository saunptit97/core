import 'package:base_getx/base.dart';
import 'package:travel/views/sign_up/controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
