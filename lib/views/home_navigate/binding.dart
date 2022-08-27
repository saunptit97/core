import 'package:base_getx/base.dart';
import 'package:travel/views/home/index.dart';
import 'package:travel/views/home_navigate/controller.dart';

class HomeNavigateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeNavigateController());
    Get.lazyPut(() => HomeControler());
  }
}
