import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/setting_title_widget.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pengaturan',
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SettingTitleWidget(
                title: 'KG Media ID',
              ),
              gapH20,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: GestureDetector(
                  onTap: () => context.go('/menu'),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      foregroundColor: purpleColor,
                      child: Text(
                        'I',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    title: Text(
                      'Hi, John Doe',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    subtitle: Text(
                      'johndoe@gmail.com',
                      style: blackTextStyle,
                    ),
                  ),
                ),
              ),
              gapH20,
              const SettingTitleWidget(
                title: 'Aktivitasmu',
              ),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomTextButton(
                  text: 'Baca Nanti',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              gapH16,
              const SettingTitleWidget(
                title: 'Pengaturan',
              ),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomTextButton(
                  text: 'Pengaturan Minat Untukmu',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomTextButton(
                  text: 'Baca Nanti',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              gapH16,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomTextButton(
                  text: 'Baca Nanti',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              gapH16,
              const SettingTitleWidget(
                title: 'Bantuan dan Lainnya',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
