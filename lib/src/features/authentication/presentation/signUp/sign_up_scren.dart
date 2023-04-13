import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_form_field_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController();
  final passwordController = TextEditingController();
  final genderController = TextEditingController();
  final birthdayController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          gapH64,
          Text(
            'KG Media ID',
            style: blackTextStyle.copyWith(
              fontSize: 24.0,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          gapH16,
          Text(
            'Daftar dengan KG Media ID untuk menggunakan\nlayanan-layanan dari KG Media',
            style: blackTextStyle.copyWith(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          gapH64,
          CustomFormFieldWidget(
            labelText: 'Nama Lengkap',
            controller: fullNameController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Gender',
            controller: genderController,
            isObsecure: true,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Tanggal Lahir',
            controller: birthdayController,
            isObsecure: true,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'No Handphone',
            controller: phoneController,
            isObsecure: true,
          ),
          gapH64,
          PrimaryButton(
            text: 'Lanjutkan',
            onPressed: () {},
          ),
          gapH24,
          Text(
            'Dengan menekan tombol “Lanjutkan”, kamu menyetujui\nbahwa data dan informasi KG Media ID milikmu akan\ndigunakan untuk memberikan layanan sesuai Kebijakan',
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          gapH40,
        ],
      ),
    );
  }
}
