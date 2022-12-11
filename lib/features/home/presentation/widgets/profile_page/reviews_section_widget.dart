import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ReviewsSectionWidget extends StatelessWidget {
  const ReviewsSectionWidget({Key? key}) : super(key: key);

  List<Widget> getStarIcons() {
    List<Widget> _starIcons = [];
    for (int i = 0; i < 5; i++) {
      _starIcons.add(SvgPicture.asset(ImageAssets.starIcon));
    }
    return _starIcons;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your reviwes',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 18.sp),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 2.h,
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A must read for everybody. This book taught me so many things about...',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: primaryColor,
                              padding: const EdgeInsets.all(0),
                              textStyle:
                                  Theme.of(context).textTheme.titleSmall),
                          onPressed: () {},
                          child: Text('Read more >'),
                        ),
                        Row(
                          children: getStarIcons()
                              .map(
                                (icon) => Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5.w),
                                  child: icon,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Image.asset(
                  ImageAssets.purchaseImage1,
                  width: 30.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Unbelievable value, next level storytelling.',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: primaryColor,
                              padding: const EdgeInsets.all(0),
                              textStyle:
                                  Theme.of(context).textTheme.titleSmall),
                          onPressed: () {},
                          child: const Text('Read more >'),
                        ),
                        Row(
                          children: getStarIcons()
                              .map(
                                (icon) => Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.5.w),
                                  child: icon,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Image.asset(
                  ImageAssets.purchaseImage2,
                  width: 30.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
