import 'package:flutter/material.dart';

class ItemSearchWidget extends StatelessWidget {
  const ItemSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://www.vietrekking.com/en/wp-content/uploads/2021/04/vung-tau-beach.jpg",
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          Text("Vịnh hạ long"),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.place_outlined,
                size: 15,
              ),
              Text(
                "0.5 km",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
