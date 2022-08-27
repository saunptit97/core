import 'package:base_getx/base.dart';
import 'package:travel/views/detail/index.dart';

class DetailPlaceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPlaceController());
  }
}
