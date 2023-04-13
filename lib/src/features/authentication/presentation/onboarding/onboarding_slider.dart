import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';

List<dynamic> titles = [
  'Selamat Datang',
  ['Atur', ' Minat'],
  'Baca Nanti',
  ['Notifikasi', ' Berita'],
];

List<dynamic> subtitles = [
  'Dapatkan berita terupdate, jernih, akurat\ndan terpercaya hanya di Kompas.com',
  'Untuk mendapatkan berita\nyang kamu suka',
  'Simpan dan',
  'Update cepet dengan'
];

List<dynamic> image = [
  'assets/ic_kompas.png',
  'assets/img_slider_one.png',
  'assets/img_slider_two.png',
  'assets/img_slider_three.png',
];

class OnboardingSliderFirst extends StatelessWidget {
  const OnboardingSliderFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH64,
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image[0],
              ),
            ),
          ),
        ),
        gapH16,
        Text(
          titles[0],
          style: TextStyle(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        gapH16,
        Text(
          subtitles[0],
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderSecond extends StatelessWidget {
  const OnboardingSliderSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Layer first (image phone)
        Positioned(
          top: 50,
          bottom: 0,
          right: 0,
          left: 0,
          child: Image.asset(
            image[1],
            height: double.infinity,
          ),
        ),

        // Layer second (black color opacity)

        Positioned(
          child: Container(
            height: double.infinity,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height * 0.4,
          bottom: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: titles[1][0],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: titles[1][1],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              gapH16,
              Text(
                subtitles[1],
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderThird extends StatelessWidget {
  const OnboardingSliderThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 50,
          child: Image.asset(
            image[2],
            height: double.infinity,
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Positioned(
          left: 0,
          top: MediaQuery.of(context).size.height * 0.4,
          bottom: 0,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      color: lightGreyColor,
                    ),
                    gapW8,
                    Text(
                      'Simpan ke Baca Nanti',
                      style: blackTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
              gapH16,
              Text(
                subtitles[2],
                style: whiteTextStyle,
              ),
              gapH4,
              Text(
                titles[2],
                style: orangeTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnboardingSliderFourth extends StatelessWidget {
  const OnboardingSliderFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          top: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                subtitles[3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              gapH16,
              RichText(
                text: TextSpan(
                  text: 'Notifikasi ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: semiBold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Berita',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                image[3],
                height: 444,
              ),
            ],
          ),
        ),
        Positioned(
          child: Column(
            children: [
              const Expanded(flex: 100, child: SizedBox()),
              Expanded(
                flex: 0,
                child: Container(
                  color: whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
