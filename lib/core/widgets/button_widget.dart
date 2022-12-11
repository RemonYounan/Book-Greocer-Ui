// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_greocer/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color,
    this.size,
  }) : super(key: key);

  final String title;
  final Function()? onPressed;
  final Color? color;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        disabledForegroundColor: Colors.white.withOpacity(0.38), disabledBackgroundColor: Colors.white.withOpacity(0.12),
        maximumSize: size ?? Size(90.w, 7.5.h),
        minimumSize: size ?? Size(90.w, 7.5.h),
        side: const BorderSide(color: primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: color ?? Colors.white),
      ),
    );
  }
}
