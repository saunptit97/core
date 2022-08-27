import 'package:core/widgets/cache_image.dart';
import 'package:flutter/material.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CacheImageWidget(
            image:
                "https://madagui.com.vn/assets/uploads/2016/03/leo-nui-fansipan.jpg",
            radius: 8,
            height: 45,
            width: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          Text("Biển & Đảo")
        ],
      ),
    );
  }
}
