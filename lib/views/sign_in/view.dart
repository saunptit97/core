import 'package:base_getx/views/base_view.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';
import 'package:travel/views/sign_in/controller.dart';

class SignInScreen extends BaseView<SignInController> {
  const SignInScreen({Key? key}) : super(key: key);

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
                const Text("Đăng nhập", style: TextStyle(fontSize: 30)),
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
                    "hoặc đăng nhập bằng email",
                  ),
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
                    title: 'Đăng nhập',
                    btnColor: ColorUtils.primaryColor,
                    onTap: controller.signUp,
                    width: MediaQuery.of(context).size.width - 40,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Bạn chưa có tài khoản?"),
                    TextButton(
                      onPressed: () => print("123"),
                      child: Text("Đăng ký"),
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
