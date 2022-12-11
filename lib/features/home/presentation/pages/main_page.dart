import 'package:book_greocer/core/app_theme.dart';
import 'package:book_greocer/core/assets_manager.dart';
import 'package:book_greocer/features/home/presentation/pages/home_page.dart';
import 'package:book_greocer/features/home/presentation/pages/profile_page.dart';
import 'package:book_greocer/features/home/presentation/widgets/main_page/scroll_to_hide_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late ScrollController controller;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    _pages = [
      HomePage(
        controller: controller,
      ),
      const HomePage(),
      const ProfilePage(),
      const HomePage(),
    ];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int _currentIndex = 0;
  void onTap(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: ScrollToHideWidget(
        controller: controller,
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          selectedItemColor: white,
          unselectedItemColor: grey,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SvgPicture.asset(
                    ImageAssets.wishListIcon,
                    height: 15,
                    color: _currentIndex == 2 ? white : grey,
                  ),
                ),
                label: 'Wishlist'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
          ],
        ),
      ),
    );
  }
}
