import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/primary_button.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/features/authentication/presentation/onboarding/onboarding_slider.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int? currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_bg_kompas_logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 82,
                child: CarouselSlider(
                  items: const [
                    // item 1
                    OnboardingSliderFirst(),
                    // item 2
                    OnboardingSliderSecond(),
                    // item 3
                    OnboardingSliderThird(),
                    // item 4
                    OnboardingSliderFourth(),
                  ],
                  carouselController: carouselController,
                  options: CarouselOptions(
                    viewportFraction: 4,
                    height: double.infinity,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => {
                      setState(() {
                        currentIndex = index;
                      })
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(),
                      const Spacer(),
                      PrimaryButton(
                        text: currentIndex == 0 ? 'Ayo Mulai' : 'Lanjutkan',
                        onPressed: () {
                          currentIndex == 3
                              ? context.pushNamed(AppRoute.signIn.name)
                              : carouselController.nextPage();
                        },
                      ),
                      gapH16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: currentIndex == 0 ? 13 : 9,
                            width: currentIndex == 0 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          gapW12,
                          Container(
                            height: currentIndex == 1 ? 13 : 9,
                            width: currentIndex == 1 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          gapW12,
                          Container(
                            height: currentIndex == 2 ? 13 : 9,
                            width: currentIndex == 2 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                          gapW12,
                          Container(
                            height: currentIndex == 3 ? 13 : 9,
                            width: currentIndex == 3 ? 13 : 9,
                            decoration: BoxDecoration(
                              color: currentIndex == 3
                                  ? Colors.deepOrange
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      gapH32,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
