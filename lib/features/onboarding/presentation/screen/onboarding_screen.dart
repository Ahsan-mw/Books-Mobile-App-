import 'package:books_mobile_app/core/utils/constants/app_images.dart';
import 'package:books_mobile_app/core/utils/constants/app_sizes.dart';
import 'package:books_mobile_app/core/utils/constants/devicies/device.dart';
import 'package:books_mobile_app/core/utils/constants/text_strings.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/elevated_button_theme.dart';
import 'package:books_mobile_app/features/onboarding/presentation/controller/onboarding_controller_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onBoardingNotifier = ref.read(onBoardingProvider.notifier);
    final onBordingState= ref.watch(onBoardingProvider);

      // final PageController pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
          },
          child: Text("Skip", style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: onBoardingNotifier.controller,
            children: [
              OnBoardingPages(
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
                image: AppImages.onBoardingImage1,
              ),
              OnBoardingPages(
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
                image: AppImages.onBoardingImage2,
              ),
              OnBoardingPages(
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
                image: AppImages.onBoardingImage3,
              ),
            ],
          ),
          Positioned(
            bottom: AppDeviceUtils.getBottomNavigationBarHeight() +
                AppSizes.defaultSpace,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.defaultSpace,
                right: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: onBoardingNotifier.controller,
                    count: 3,

                    effect: ScrollingDotsEffect(dotHeight: 10),
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        onBoardingNotifier.nextPage();

                      },
                      child: Text("Next"),
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // You can add navigation logic to sign-in page here
                      },
                      style: AppElevatedButtonTheme.greyElevatedButtonTheme.style,
                      child: Text("Sign in"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(width: double.infinity, image: AssetImage(image)),
          SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            width: 220,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            width: 300,
            child: Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
