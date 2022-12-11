import 'package:book_greocer/core/widgets/button_widget.dart';
import 'package:book_greocer/features/auth/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MonthlyNewsletterWidget extends StatelessWidget {
  const MonthlyNewsletterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w, top: 2.h),
          child: Text(
            'Monthly Newletter',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              color: const Color(0xffEFEFEF).withOpacity(.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion.',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const TextFormFieldWidget(
                  hintText: 'Name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const TextFormFieldWidget(
                  hintText: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonWidget(
                title: 'Sign Up',
                onPressed: () {},
                size: Size(40.w, 7.5.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
