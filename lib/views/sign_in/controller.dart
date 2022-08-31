import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:travel/routes/routes.dart';

class SignInController extends BaseController {
  var formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isShowPass = false;
  String? validateEmail(String value) {
    if (GetUtils.isNullOrBlank(value)!) {
      return 'Vui lòng nhập email của bạn';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Email không hợp lệ';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (GetUtils.isNullOrBlank(value)!) {
      return 'Vui lòng nhập mật khẩu của bạn';
    }
    return null;
  }

  signUp() async {
    if (formKey.currentState!.validate()) {
      Get.offAllNamed(RouteNames.home);
    }
  }

  changeShowPass() {
    isShowPass = !isShowPass;
    update();
  }
}
