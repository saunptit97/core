import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/views/home/index.dart';
import 'package:travel/views/home_navigate/index.dart';

class HomeNavigateScreen extends BaseView<HomeNavigateController> {
  const HomeNavigateScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller.bottomController,
        screens: [
          HomeScreen(),
          Text("A"),
          Text("A"),
        ],
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        onWillPop: (context) async {
          // await showDialog(
          //   context: context,
          //   useSafeArea: true,
          //   builder: (context) => Container(
          //     height: 50.0,
          //     width: 50.0,
          //     color: Colors.white,
          //     child: ElevatedButton(
          //       child: Text("Close"),
          //       onPressed: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ),
          // );
          return false;
        },
        selectedTabScreenContext: (context) {
          // testContext = context;
        },
        // hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style1, // Choose the nav bar style with this property
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Trang chủ",
        activeColorPrimary: ColorUtils.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.place),
        title: "Khám phá",
        activeColorPrimary: ColorUtils.primaryColor,
        inactiveColorPrimary: Colors.grey,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => MainScreen2(),
        //     '/second': (context) => MainScreen3(),
        //   },
        // ),
      ),
      // PersistentBottomNavBarItem(
      //   icon: Icon(Icons.message),
      //   title: ("Messages"),
      //   activeColorPrimary: ColorUtils.primaryColor,
      //   inactiveColorPrimary: Colors.grey,
      //   // routeAndNavigatorSettings: RouteAndNavigatorSettings(
      //   //   initialRoute: '/',
      //   //   routes: {
      //   //     '/first': (context) => MainScreen2(),
      //   //     '/second': (context) => MainScreen3(),
      //   //   },
      //   // ),
      // ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Cá nhân"),
        activeColorPrimary: ColorUtils.primaryColor,
        inactiveColorPrimary: Colors.grey,
        // routeAndNavigatorSettings: RouteAndNavigatorSettings(
        //   initialRoute: '/',
        //   routes: {
        //     '/first': (context) => MainScreen2(),
        //     '/second': (context) => MainScreen3(),
        //   },
        // ),
      ),
    ];
  }
}
