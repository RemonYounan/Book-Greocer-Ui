import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/book_widget.dart';
import 'package:flutter/material.dart';

const List<Widget> recentlyViewedBooksWidgets = [
  BookWidget(
    assetName: ImageAssets.theFatalTreeBookImage,
    bookName: 'The Fatal Tree',
    auther: 'by Jake Arnott',
  ),
   BookWidget(
    assetName: ImageAssets.dayFourBookImage,
    bookName: 'Day Four',
    auther: 'by LOTZ, SARAH',
  ),
   BookWidget(
    assetName: ImageAssets.doorToDoorBookImage,
    bookName: 'Door To Door',
    auther: 'by Edward Humes',
  ),
];
