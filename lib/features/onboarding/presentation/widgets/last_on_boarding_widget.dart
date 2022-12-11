import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class LastOnBoardingWidget extends StatelessWidget {
  const LastOnBoardingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Positioned(
          top: 10.h,
          right: -20.w,
          child: SvgPicture.asset(ImageAssets.onBoardingRightImage),
        ),
        Positioned.fill(
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Text(
                AppStrings.onBoardingTitle4,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              ButtonWidget(
                title: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, AppStrings.signInPageRouteName);
                },
              ),
              SizedBox(height: 2.h),
              ButtonWidget(
                title: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, AppStrings.signUpPageRouteName);
                },
              ),
            ],
          ),
        ),
        Positioned(
          top: -2.h,
          left: -10.w,
          child: SvgPicture.asset(ImageAssets.onBoardingLeftImage),
        ),
        Positioned(
          left: -48.w,
          bottom: -10.h,
          child: SvgPicture.asset(ImageAssets.onBoardingMainImage),
        ),
      ],
    );
  }
}
