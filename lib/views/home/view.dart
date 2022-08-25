import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:travel/views/home/index.dart';

class HomeScreen extends BaseView<HomeControler> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_home.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
