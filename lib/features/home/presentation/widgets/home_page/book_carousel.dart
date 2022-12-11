import 'package:book_greocer/features/home/data/book_page_view_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookCarousel extends StatelessWidget {
  const BookCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bookPageViewWidgets.length,
      itemBuilder: (ctx, index, _) => bookPageViewWidgets[index],
      options: CarouselOptions(
        height: 50.h,
        viewportFraction: .45,
        enlargeCenterPage: true,
      ),
    );
  }
}
