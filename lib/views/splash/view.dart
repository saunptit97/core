import 'package:base_getx/base.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/views/splash/controller.dart';

class SplashScreen extends BaseView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/images/bg1.jpeg"),
                fit: BoxFit.fitHeight,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.7),
                  BlendMode.modulate,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ButtonWidget(
                  title: 'Đăng nhập',
                  onTap: controller.navigateSignIn,
                  btnColor: ColorUtils.primaryColor,
                  height: 60,
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget(
                  title: 'Đăng ký',
                  btnColor: Colors.white,
                  titleStyle: const TextStyle(color: ColorUtils.primaryColor),
                  onTap: controller.navigateSignUp,
                  height: 60,
                  borderRadius: BorderRadius.circular(10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
