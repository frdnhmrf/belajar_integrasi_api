import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class NewsCardIndex extends StatelessWidget {
  final String title;
  final String subtitle;
  final String nameCategory;
  final String release;
  final String image;
  final VoidCallback? onTap;

  const NewsCardIndex({
    super.key,
    required this.title,
    required this.subtitle,
    required this.nameCategory,
    required this.release,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    String date = release.substring(0, 10).split('-').reversed.join('-');
    String time = release.substring(11, 16);

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameCategory.toString(),
                            style: orangeTextStyle,
                          ),
                          gapH4,
                          Text(
                            title.toString(),
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    gapW20,
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'http://localhost:8055/assets/$image',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 119,
                        height: 88,
                      ),
                    )
                  ],
                ),
                gapH20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$date, $time',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: 24,
                      color: greyColor,
                    )
                  ],
                ),
                gapH20,
              ],
            ),
          ),
          Divider(
            color: lightGreyColor,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
