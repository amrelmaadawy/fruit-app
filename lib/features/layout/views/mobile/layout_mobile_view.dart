import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/views/basket_view.dart';
import 'package:fruit_app/features/favorite/views/favorite_view.dart';
import 'package:fruit_app/features/home/views/home_view.dart';
import 'package:fruit_app/features/more/views/more_view.dart';
import 'package:fruit_app/features/orders/views/orders_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';

class LayoutMobileView extends StatefulWidget {
  const LayoutMobileView({super.key});

  @override
  State<LayoutMobileView> createState() => _LayoutMobileViewState();
}

class _LayoutMobileViewState extends State<LayoutMobileView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeView(),
    OrdersView(),
    BasketView(),
    FavoriteView(),
    MoreView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kDefHomePadding),
          child: IndexedStack(index: _currentIndex, children: _screens),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 10.h,
        child: SalomonBottomBar(

          unselectedItemColor: Colors.white,
          backgroundColor: kPrimaryColor,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined, size: 5.sp),
              title: Text('Home', style: TextStyle(fontSize: 3.sp)),
              selectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.assignment_outlined, size: 5.sp),
              title: Text('Orders', style: TextStyle(fontSize: 3.sp)),
              selectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_basket_outlined, size: 5.sp),
              title: Text('Basket', style: TextStyle(fontSize: 3.sp)),
              selectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border_outlined, size: 5.sp),
              title: Text('Favorite', style: TextStyle(fontSize: 3.sp)),
              selectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.menu, size: 5.sp),
              title: Text('More', style: TextStyle(fontSize: 3.sp)),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
