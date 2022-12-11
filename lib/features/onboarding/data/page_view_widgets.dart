import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:book_greocer/features/onboarding/presentation/widgets/last_on_boarding_widget.dart';
import 'package:book_greocer/features/onboarding/presentation/widgets/page_view_item_widget.dart';
import 'package:flutter/material.dart';

class Data {
 static final List<Widget> pageViewWidgets = [
    const PageViewItemWidget(
        title: AppStrings.onBoardingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
        image: ImageAssets.onBoardingAssetImage1),
    const PageViewItemWidget(
        title: AppStrings.onBoardingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
        image: ImageAssets.onBoardingAssetImage2),
    const PageViewItemWidget(
        title: AppStrings.onBoardingTitle3,
        subTitle: AppStrings.onBoardingSubTitle3,
        image: ImageAssets.onBoardingAssetImage3),
    const LastOnBoardingWidget(),
  ];
}
