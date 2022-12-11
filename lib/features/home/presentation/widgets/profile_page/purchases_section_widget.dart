import 'package:book_greocer/core/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PurchasesSectionWidget extends StatelessWidget {
  const PurchasesSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              'Your purchases (21)',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18.sp),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Image.asset(ImageAssets.purchaseImage1),
                Image.asset(ImageAssets.purchaseImage2),
                Image.asset(ImageAssets.purchaseImage3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
