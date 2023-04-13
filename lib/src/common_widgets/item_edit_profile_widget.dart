import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class ItemEditProfileWidget extends StatelessWidget {
  final String title;
  final String subtitles;
  const ItemEditProfileWidget({
    Key? key,
    required this.title,
    required this.subtitles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: greyTitleTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          gapH4,
          Text(
            subtitles,
            style: greySubtitleTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
