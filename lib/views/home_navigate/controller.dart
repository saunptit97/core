import 'package:base_getx/base.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeNavigateController extends BaseController {
  PersistentTabController bottomController =
      PersistentTabController(initialIndex: 0);
}
