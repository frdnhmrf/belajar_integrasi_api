import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_text_button.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/item_edit_profile_widget.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapH32,
                  CircleAvatar(
                    backgroundColor: purpleColor,
                    radius: 88 / 2,
                    child: Text(
                      'I',
                      style: whiteTextStyle.copyWith(
                        fontSize: 41,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  gapH24,
                  Text(
                    'John Doe',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  gapH24,
                  Text(
                    'KG Media ID',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  gapH12,
                  Text(
                    'johndoe@gmail.com',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  gapH48,
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            gapH20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextButton(
                text: 'Ubah Profil',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                ),
                onPressed: () => context.pushNamed(AppRoute.editProfile.name),
              ),
            ),
            gapH20,
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Pilih Gender',
              title: 'Gender',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Tanggal Lahir',
              title: 'Pilih Tanggal Lahir',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Status Pernikahan',
              title: 'Status Pernikahan',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            const ItemEditProfileWidget(
              subtitles: 'No Handphone',
              title: 'No Handphone',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Alamat Jalan',
              title: 'Alamat',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Pendidikan Terakhir',
              title: 'Pendidikan Terakhir',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              title: 'Pekerjaan',
              subtitles: 'Pekerjaan Terakhir',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Hapus Akun',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Logout',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
          ],

          // gapH48,
          // Container(
          //   width: double.infinity,
          //   height: 17,
          //   color: lightGreyColor,
          // ),
          // gapH20,
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30),
          //   child: CustomTextButton(
          //     text: 'Ubah Profil',
          //     style: blueTextStyle.copyWith(
          //       fontSize: 16,
          //       decoration: TextDecoration.underline,
          //     ),
          //   ),
          // ),
          // gapH20,
          // Container(
          //   width: double.infinity,
          //   height: 17,
          //   color: lightGreyColor,
          // ),
          // const ItemEditProfileWidget(
          //   subtitles: 'Pilih Gender',
          //   title: 'Gender',
          // ),
        ),
      ),
    );
  }
}
