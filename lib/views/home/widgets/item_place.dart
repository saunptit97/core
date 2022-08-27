import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel/utils/colors.dart';

class ItemPlaceWidget extends StatelessWidget {
  const ItemPlaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  "https://lh3.googleusercontent.com/6BhPMJJTYKBO7KDezwnUEMCcLzYMbkZM-crXbqX2eUli0s8DPQGrBUxHjGU63YMvzIIYMh_2lQsQdhkQNJ10GxcqbuggRFz3LA4v2F-yTgeNWzVuffC9J5hngnxpYfJaz5CmtdQ3",
                  width: 180,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: 5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    unratedColor: Colors.amber.withAlpha(50),
                    direction: Axis.horizontal,
                  ),
                  Text(
                    "(347)",
                    style: TextStyle(
                      color: ColorUtils.grey8C,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              const Text(
                "Vịnh Hạ Long",
                style: TextStyle(
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.place,
                    size: 16,
                    color: ColorUtils.grey8C,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                    child: Text(
                      "TP Hạ Long",
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorUtils.grey8C,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: const TextSpan(
                  text: "1.000.000",
                  style: TextStyle(
                    color: ColorUtils.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: "/đêm",
                      style: TextStyle(color: ColorUtils.grey8C, fontSize: 14),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35 / 2),
            ),
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
