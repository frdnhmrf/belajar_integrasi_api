import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/ic_kompas_title.png',
            fit: BoxFit.cover,
            height: 30,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: whiteColor,
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            gapH24,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tekno',
                  style: orangeTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                gapW12,
                Text(
                  'Selasa, 24 Jan 2023, 12.48 WIB ',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            gapH24,
            Text(
              'Curhat Karyawan Google yang\nDipecat, dari Kesal hingga\nMerasa Terbuang',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
            gapH24,
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/img_news_three.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            gapH16,
            RichText(
              text: TextSpan(
                text: 'Penulis: ',
                style: blackTextStyle.copyWith(fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Lely Maulida',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
            // News
            RichText(
              text: TextSpan(
                text: 'KOMPAS.com - ',
                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Google akhir pekan lalu mengumumkan Pemutusan Hubungan Kerja (PHK) terhadap 12.000 karyawan atau setara sekitar 6 persen dari total karyawan perusahaan di seluruh dunia. \n\nPHK massal Google memengaruhi sejumlah karyawan baik level senior maupun mereka yang baru dipromosikan. Praktik ini lantas memicu rasa penasaran di kalangan karyawan, karena beberapa di antaranya berperan penting dalam divisi terkait.  Google akhir pekan lalu mengumumkan Pemutusan Hubungan Kerja (PHK) terhadap 12.000 karyawan atau setara sekitar 6 persen dari total karyawan perusahaan di seluruh dunia. \n\nPHK massal Google memengaruhi sejumlah karyawan baik level senior maupun mereka yang baru dipromosikan. Praktik ini lantas memicu rasa penasaran di kalangan karyawan, karena beberapa di antaranya berperan penting dalam divisi terkait. ',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
