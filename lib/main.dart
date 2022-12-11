import 'package:book_greocer/app_router.dart';
import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/features/home/presentation/pages/main_page.dart';
import 'package:book_greocer/features/home/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: '/',
          // home: MainPage(),
        );
      },
    );
  }
}
