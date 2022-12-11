import 'package:book_greocer/features/onboarding/data/page_view_widgets.dart';
import 'package:book_greocer/features/onboarding/presentation/blocs/cubit/on_boarding_cubit.dart';
import 'package:book_greocer/features/onboarding/presentation/widgets/dot_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                itemCount: Data.pageViewWidgets.length,
                itemBuilder: (context, index) => Data.pageViewWidgets[index],
                controller: _controller,
                onPageChanged: (value) =>
                    context.read<OnBoardingCubit>().pageViewChanged(value),
              ),
            ),
            Positioned(
              bottom: 15.h,
              left: 38.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    GestureDetector(
                      onTap: () {
                        _controller.animateToPage(i,
                            curve: Curves.linear,
                            duration: const Duration(milliseconds: 300));
                      },
                      child: DotIndicatorWidget(
                        index: i,
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
