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
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.white,
        backgroundColor: kPrimaryColor,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: Text('Home'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.assignment_outlined),
            title: Text('Orders'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_basket_outlined),
            title: Text('Basket'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border_outlined),
            title: Text('Favorite'),
            selectedColor: Colors.white,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.menu),
            title: Text('More'),
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
