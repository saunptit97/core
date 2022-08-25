import 'package:base_getx/base.dart';
import 'package:travel/views/home/index.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeControler());
  }
}
