// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class SettingTitleWidget extends StatelessWidget {
  final String title;
  const SettingTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: lightGreyColor,
      ),
      child: Text(
        title,
        style: blackTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
