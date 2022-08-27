import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:travel/views/detail/index.dart';

class DetailPlaceScreen extends BaseView<DetailPlaceController> {
  const DetailPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
    );
  }
}
