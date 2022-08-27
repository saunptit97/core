import 'package:base_getx/base.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:travel/views/home/index.dart';
import 'package:travel/views/home/widgets/item_category.dart';
import 'widgets/item_place.dart';

class HomeScreen extends BaseView<HomeControler> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Khám phá",
                        style: TextStyle(fontSize: 26),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Tìm một địa điểm cho bạn")
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                controller: controller.searchController,
                paddingLeft: 0,
                paddingRight: 0,
                prefixIcon: const Icon(Icons.search),
                hintText: "Tìm kiếm địa điểm du lịch",
                enable: false,
                onTap: () => print("change"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 250,
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Danh mục"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Tất cả"),
                  )
                ],
              ),
              SizedBox(
                height: 65,
                width: Get.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return const ItemCategoryWidget();
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
      ),
      // body: Stack(
      //   children: [
      //     Container(
      //       height: Get.height,
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/bg_home.jpeg"),
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: 250,
      //       left: 20,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           const Text(
      //             "Khám phá du lịch\nViệt Nam",
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 26,
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           Text(
      //             "Khám phá".toUpperCase(),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           SizedBox(
      //             height: 200,
      //             width: Get.width,
      //             child: ListView.separated(
      //               scrollDirection: Axis.horizontal,
      //               itemBuilder: (_, index) {
      //                 return const ItemPlaceWidget();
      //               },
      //               separatorBuilder: (_, index) {
      //                 return const SizedBox(
      //                   width: 10,
      //                 );
      //               },
      //               itemCount: 10,
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 20,
      //           ),
      //           Text(
      //             "Tìm kiếm gần nhất".toUpperCase(),
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           SizedBox(
      //             height: 145,
      //             width: Get.width,
      //             child: ListView.separated(
      //               scrollDirection: Axis.horizontal,
      //               itemBuilder: (_, index) {
      //                 return const ItemSearchWidget();
      //               },
      //               separatorBuilder: (_, index) {
      //                 return const SizedBox(
      //                   width: 10,
      //                 );
      //               },
      //               itemCount: 10,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
