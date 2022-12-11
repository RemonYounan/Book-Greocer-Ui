import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class OurBooksPage extends StatelessWidget {
  const OurBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: primaryColor),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50.h,
            width: 100.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: -20.h,
                  right: -27.w,
                  child: Transform.scale(
                    scale: 1,
                    child: Image.asset(
                      ImageAssets.ourBooksImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            children: [
              Text(
                AppStrings.ourBooksText1,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.ourBooksText2,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                AppStrings.ourBooksText3,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.ourBooksText4,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.ourBooksText5,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                AppStrings.ourBooksText6,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
