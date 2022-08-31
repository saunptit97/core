import 'package:base_getx/controller/base_controller.dart';
import 'package:flutter/cupertino.dart';

class SignUpController extends BaseController {
  var formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isShowPass = false;

  String? validateFirstName(String value) {
    if (GetUtils.isNullOrBlank(value)!) {
      return 'Vui lòng nhập tên của bạn';
    }
    return null;
  }

  String? validateLastName(String value) {
    if (GetUtils.isNullOrBlank(value)!) {
      return 'Vui lòng nhập tên đệm của bạn';
    }
    return null;
  }

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
    if (formKey.currentState!.validate()) {}
  }

  changeShowPass() {
    isShowPass = !isShowPass;
    update();
  }
}
