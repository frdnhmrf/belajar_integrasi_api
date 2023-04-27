// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';

import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class MenuCategoryCardWidget extends StatelessWidget {
  const MenuCategoryCardWidget({
    Key? key,
    this.onTap,
    this.onPressedMore,
    required this.category,
  }) : super(key: key);

  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.42,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.42,
                child: Image.network(
                  'http://localhost:8055/assets/${category.categoryImage}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 7.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name.toString(),
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  gapH4,
                  Text(
                    category.subname.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: whiteTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
