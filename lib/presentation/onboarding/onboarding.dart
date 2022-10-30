import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced/presentation/resources/app_assets.dart';
import 'package:flutter_advanced/presentation/resources/app_colors.dart';
import 'package:flutter_advanced/presentation/resources/app_constants.dart';
import 'package:flutter_advanced/presentation/resources/app_strings.dart';
import 'package:flutter_advanced/presentation/resources/app_values.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingLayouts extends StatefulWidget {
  const OnBoardingLayouts({super.key});

  @override
  State<OnBoardingLayouts> createState() => _OnBoardingLayoutsState();
}

class _OnBoardingLayoutsState extends State<OnBoardingLayouts> {
  final PageController _pageController = PageController();

  final List<OnBoardingObject> _onBoradingContent = [
    OnBoardingObject(
      AppStrings.onBoardingTitle1,
      AppStrings.onBoardingSubtitle1,
      AppAssets.onBoardingLogo1,
      AppSize.s267,
      AppSize.s267,
    ),
    OnBoardingObject(
      AppStrings.onBoardingTitle2,
      AppStrings.onBoardingSubtitle2,
      AppAssets.onBoardingLogo2,
      AppSize.s326,
      AppSize.s326,
    ),
    OnBoardingObject(
      AppStrings.onBoardingTitle3,
      AppStrings.onBoardingSubtitle3,
      AppAssets.onBoardingLogo3,
      AppSize.s287,
      AppSize.s287,
    ),
    OnBoardingObject(
      AppStrings.onBoardingTitle4,
      AppStrings.onBoardingSubtitle4,
      AppAssets.onBoardingLogo4,
      AppSize.s356,
      AppSize.s356,
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.white),
      ),
      body: SafeArea(
        child: Padding(
          // TODO: add sizer package
          padding: const EdgeInsets.all(AppPading.p16),
          child: PageView.builder(
            controller: _pageController,
            itemCount: _onBoradingContent.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnBoardingPage(
                  onBoardingObject: _onBoradingContent[index]);
            },
          ),
        ),
      ),
      bottomSheet: Container(
        height: AppSize.s100,
        color: AppColors.white,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              // TODO: edit splash click
              child: TextButton(
                child: Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                onPressed: () {},
              ),
            ),
            Expanded(child: _getIndicator()),
          ],
        ),
      ),
    );
  }

  // helper Methods
  Widget _getIndicator() {
    return Container(
      color: AppColors.oragne,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // left arrow
          GestureDetector(
            onTap: () {
              print("the current index is ${_currentIndex}");
              if (_currentIndex > 0) {
                _pageController.previousPage(
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.easeIn);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(AppPading.p16),
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(AppAssets.leftArrowIc),
              ),
            ),
          ),
          // custom dots
          Row(
            children: [
              for (int i = 0; i < _onBoradingContent.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPading.p8),
                  child: _getProperCircle(i),
                ),
            ],
          ),
          // right arrow
          GestureDetector(
            onTap: () {
              print("the current index is ${_currentIndex}");
              if (_currentIndex < _onBoradingContent.length - 1) {
                _pageController.nextPage(
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.easeIn);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(AppPading.p16),
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(AppAssets.rightArrowIc),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index) {
    if (_currentIndex == index) {
      return SvgPicture.asset(
        AppAssets.hollowCircleIc,
      );
    }
    return SvgPicture.asset(
      AppAssets.solidCircleIc,
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final OnBoardingObject onBoardingObject;
  const OnBoardingPage({super.key, required this.onBoardingObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          onBoardingObject.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        Text(
          onBoardingObject.subtitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        SvgPicture.asset(
          onBoardingObject.image,
          height: AppSize.s287,
          width: AppSize.s287,
        ),
        const SizedBox(height: AppSize.s40,)
      ],
    );
  }
}

class OnBoardingObject {
  final String title;
  final String subtitle;
  final String image;
  // TODO: remeber delete or edit
  // height & width for image
  final double imgHeight;
  final double imgWidth;

  OnBoardingObject(this.title, this.subtitle, this.image, this.imgHeight, this.imgWidth);
}
