import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/core/strings_manager.dart';

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      AppStrings.profileName,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      AppStrings.profileBio,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Image.asset(
                      ImageAssets.profileImage,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 4.5.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff5ABD8C),
                              Color(0xff00FF81),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(color: white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    '21',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Books',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                children: [
                  Text(
                    '5',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Reviews',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
