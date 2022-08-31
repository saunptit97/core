import 'package:base_getx/views/base_view.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/views/sign_up/controller.dart';

class SignUpScreen extends BaseView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Đăng ký", style: TextStyle(fontSize: 30)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    children: [
                      ButtonWidget(
                        title: 'Facebook',
                        onTap: () {},
                        btnColor: ColorUtils.blue05,
                        width: MediaQuery.of(context).size.width / 2 - 25,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ButtonWidget(
                        title: 'Google',
                        onTap: () {},
                        btnColor: ColorUtils.redF5,
                        width: MediaQuery.of(context).size.width / 2 - 25,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    "hoặc đăng ký bằng email",
                  ),
                ),
                TextFieldWidget(
                  controller: controller.firstNameController,
                  paddingLeft: 0,
                  paddingRight: 0,
                  hintText: 'Tên của bạn',
                  validator: (value) {
                    return controller.validateFirstName(value!);
                  },
                ),
                TextFieldWidget(
                  controller: controller.lastNameController,
                  paddingLeft: 0,
                  paddingRight: 0,
                  hintText: 'Tên đệm',
                  validator: (value) {
                    return controller.validateLastName(value!);
                  },
                ),
                TextFieldWidget(
                  controller: controller.emailController,
                  paddingLeft: 0,
                  paddingRight: 0,
                  hintText: 'Địa chỉ email',
                  validator: (value) {
                    return controller.validateEmail(value!);
                  },
                ),
                TextFieldWidget(
                  controller: controller.passwordController,
                  paddingLeft: 0,
                  paddingRight: 0,
                  hintText: 'Mật khẩu',
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.changeShowPass();
                    },
                    icon: Icon(
                      !controller.isShowPass
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  validator: (value) {
                    return controller.validatePassword(value!);
                  },
                  isPassword: !controller.isShowPass,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: ButtonWidget(
                    title: 'Đăng ký',
                    btnColor: ColorUtils.primaryColor,
                    onTap: controller.signUp,
                    width: MediaQuery.of(context).size.width - 40,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Bạn đã có tài khoản?"),
                    TextButton(
                      onPressed: () => print("123"),
                      child: Text("Đăng nhập"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
