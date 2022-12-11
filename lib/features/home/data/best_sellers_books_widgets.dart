import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/widgets/home_page/book_widget.dart';
import 'package:flutter/material.dart';

const List<Widget> bestSellersBooksWidgets = [
   BookWidget(
    assetName: ImageAssets.theZooBookImage,
    bookName: 'The Zoo',
    auther: 'by Christopher Wilson',
  ),
   BookWidget(
    assetName: ImageAssets.inAlandOfPaperBookImage,
    bookName: 'In A Land Of Paper Gods',
    auther: 'by Rebecca Mackenzie',
  ),
   BookWidget(
    assetName: ImageAssets.tattletaleBookImage,
    bookName: 'Tattletale',
    auther: 'by Sarah J. Noughton',
  ),
];
