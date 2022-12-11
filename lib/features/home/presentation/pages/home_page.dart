// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_greocer/features/home/presentation/widgets/main_page/my_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/best_seller_widget.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/book_carousel.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/genres_widget.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/monthly_newsletter_widget.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/recently_viewed_widget.dart';

class HomePage extends StatelessWidget {
  final ScrollController? controller;
  const HomePage({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: primaryColor,
          // statusBarColor:
          //     _scaffoldKey.currentState!.isEndDrawerOpen ? white : primaryColor,
        ),
      ),
      endDrawer: const MyDrawerWidget(),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: -25.h,
                  left: -10.w,
                  child: SvgPicture.asset(
                    ImageAssets.elipseImage,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Our Top Picks',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.white),
                          ),
                          InkWell(
                            onTap: () {
                              print('pressed !');
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                            child:
                                SvgPicture.asset('assets/images/listIcon.svg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const BookCarousel(),
                  ],
                ),
              ],
            ),
            const BestSellerWidget(),
            const GenresWidget(),
            const RecentlyViewedWidget(),
            const MonthlyNewsletterWidget(),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
