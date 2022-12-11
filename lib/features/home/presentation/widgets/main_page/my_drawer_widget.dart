import 'package:book_greocer/features/home/presentation/widgets/main_page/drawer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
      child: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 14.h,
            ),
            const DrawerItemWidget(title: 'Home', icon: Icons.home),
            const DrawerItemWidget(
                title: 'Our Books', icon: Icons.menu_book_rounded),
            const DrawerItemWidget(
                title: 'Our Stores', icon: Icons.store_rounded),
            const DrawerItemWidget(title: 'Careers', icon: Icons.cases_rounded),
            const DrawerItemWidget(
                title: 'Sell With Us', icon: Icons.attach_money_rounded),
            const DrawerItemWidget(title: 'NewsLetter', icon: Icons.email),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'cog',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Terms',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Privacy',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
