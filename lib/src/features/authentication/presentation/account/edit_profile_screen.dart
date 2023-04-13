import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/custom_form_field_widget.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          gapH24,
          Text(
            'KG Media ID',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          gapH12,
          Text(
            'johndoe@gmail.com',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Nama Lengkap',
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Gender',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Tanggal Lahir',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Status Perkawinan',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'No Handphone',
            isObsecure: true,
          ),
          gapH24,
          Text(
            'Alamat Tempat Tinggal',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Alamat Jalan',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Pilih Provinsi',
            isObsecure: true,
          ),
          gapH32,
          Row(
            children: const [
              Expanded(
                child: CustomFormFieldWidget(
                  labelText: 'Pilih Kecamatan',
                  isObsecure: true,
                ),
              ),
              gapW8,
              Expanded(
                child: CustomFormFieldWidget(
                  labelText: 'Kode Pos',
                  isObsecure: true,
                ),
              ),
            ],
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: 'Pendidikan Terkahir',
            isObsecure: true,
          ),
          gapH32,
          const CustomFormFieldWidget(
            labelText: ' Jenis Pekerjaan',
            isObsecure: true,
          ),
          gapH48,
          const PrimaryButton(text: 'Simpan'),
          gapH24,
          RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              text:
                  'Dengan menekan tombol “Lanjutkan”, kamu menyetujui bahwa data dan informasi KG Media ID milikmu akan digunakan untuk memberikan layanan sesuai  ',
              style: TextStyle(
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Kebijakan',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          gapH48,
        ],
      ),
    );
  }
}
