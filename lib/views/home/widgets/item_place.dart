import 'package:flutter/material.dart';

class ItemPlaceWidget extends StatelessWidget {
  const ItemPlaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://lh3.googleusercontent.com/6BhPMJJTYKBO7KDezwnUEMCcLzYMbkZM-crXbqX2eUli0s8DPQGrBUxHjGU63YMvzIIYMh_2lQsQdhkQNJ10GxcqbuggRFz3LA4v2F-yTgeNWzVuffC9J5hngnxpYfJaz5CmtdQ3",
          ),
          colorFilter: ColorFilter.mode(
            Colors.grey.withOpacity(0.9),
            BlendMode.modulate,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Vịnh Hạ Long",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.favorite_border,
                size: 20,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "25",
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
