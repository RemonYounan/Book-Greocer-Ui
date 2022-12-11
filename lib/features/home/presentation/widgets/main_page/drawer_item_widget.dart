// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_greocer/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItemWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: primaryColor,
      highlightColor: primaryColor,
      
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(
              width: 10.w,
            ),
            Icon(
              icon,
              color: primaryColor,
              size: 22.sp,
            ),
          ],
        ),
      ),
    );
  }
}
