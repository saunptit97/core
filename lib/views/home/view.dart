import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:travel/views/home/index.dart';

import 'widgets/item_place.dart';
import 'widgets/item_search.dart';

class HomeScreen extends BaseView<HomeControler> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_home.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Khám phá du lịch\nViệt Nam",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Khám phá".toUpperCase(),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  width: Get.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return const ItemPlaceWidget();
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Tìm kiếm gần nhất".toUpperCase(),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 145,
                  width: Get.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return const ItemSearchWidget();
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
