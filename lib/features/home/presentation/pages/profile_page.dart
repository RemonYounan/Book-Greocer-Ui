import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/widgets/profile_page/profile_section_widget.dart';
import 'package:book_greocer/features/home/presentation/widgets/profile_page/purchases_section_widget.dart';
import 'package:book_greocer/features/home/presentation/widgets/profile_page/reviews_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset(ImageAssets.arrow),
        ),
      ),
      body: ListView(
        children: [
          const ProfileSectionWidget(),
          SizedBox(
            height: 4.h,
          ),
          const PurchasesSectionWidget(),
          const ReviewsSectionWidget(),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
