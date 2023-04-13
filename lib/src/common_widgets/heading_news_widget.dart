import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

import '../constants/app_sizes.dart';

class HeadingNewsWidget extends StatelessWidget {
  const HeadingNewsWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    this.onTap,
    this.onPressedMore,
  }) : super(key: key);

  final String image;
  final String title;
  final String category;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          gapH12,
          Text(
            category,
            style: orangeTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          gapH4,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30.0,
                  color: greyColor,
                ),
                onPressed: onPressedMore,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
