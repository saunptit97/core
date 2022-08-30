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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Sign Up"),
            const Spacer(),
            const Text("SIGN UP WITH"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  ButtonWidget(
                    title: 'Facebook',
                    onTap: () {},
                    btnColor: ColorUtils.blue05,
                    width: MediaQuery.of(context).size.width / 2 - 25,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    title: 'Google',
                    onTap: () {},
                    btnColor: ColorUtils.redF5,
                    width: MediaQuery.of(context).size.width / 2 - 25,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ],
              ),
            ),
            const Text("OR"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ButtonWidget(
                title: 'Đăng ký',
                btnColor: ColorUtils.primaryColor,
                onTap: () {},
                width: MediaQuery.of(context).size.width - 40,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Row(
              children: [
                const Text("Already member?"),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: const Text("Login"),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
