import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.isObsecure = false,
  });

  final String labelText;
  final bool isObsecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: blackTextStyle,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: Sizes.p20,
              horizontal: Sizes.p16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            labelText: labelText,
          ),
        )
      ],
    );
  }
}
