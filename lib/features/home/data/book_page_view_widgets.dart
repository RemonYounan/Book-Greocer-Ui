import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/book_carousel_item_widget.dart';
import 'package:flutter/material.dart';

const List<Widget> bookPageViewWidgets = [
  BookCarouselItemWidget(
    imageAsset: ImageAssets.fatherhoodBookImage,
    title: 'Fatherhood',
    auther: 'Marcus Berkmann',
  ),
  BookCarouselItemWidget(
    imageAsset: ImageAssets.timeTravellersBookImage,
    title: 'The Time Travellers Handbook',
    auther: 'Stride Lottie',
  ),
  BookCarouselItemWidget(
    imageAsset: ImageAssets.emileZoleBookImage,
    title: 'The Disapearance of Emile Zola',
    auther: 'Michael Rosen',
  ),
];
