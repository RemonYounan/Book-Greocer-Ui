import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/features/onboarding/presentation/blocs/cubit/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Container(
          height: 3.5.w,
          width: 3.5.w,
          margin: EdgeInsets.symmetric(horizontal: 1.5.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.read<OnBoardingCubit>().currentIndex == index
                ? primaryColor
                : dotIndicatorColor,
          ),
        );
      },
    );
  }
}
