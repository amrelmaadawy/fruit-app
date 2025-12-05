import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/home/views/home_view.dart';
import 'package:fruit_app/features/orders/views/orders_view.dart';
import 'package:fruit_app/features/favorite/views/favorite_view.dart';
import 'package:fruit_app/features/basket/views/basket_view.dart';
import 'package:fruit_app/features/more/views/more_view.dart';

class LayoutMobileLandscape extends StatefulWidget {
  const LayoutMobileLandscape({super.key});

  @override
  LayoutMobileLandscapeState createState() => LayoutMobileLandscapeState();
}

class LayoutMobileLandscapeState extends State<LayoutMobileLandscape> {
  int index = 0;

  final screens = [
    HomeView(),
    OrdersView(),
    BasketView(),
    FavoriteView(),
    MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 80,
            color: kPrimaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navItem(Icons.home_outlined, 0),
                _navItem(Icons.assignment_outlined, 1),
                _navItem(Icons.shopping_basket_outlined, 2),
                _navItem(Icons.favorite_border_outlined, 3),
                _navItem(Icons.menu, 4),
              ],
            ),
          ),

          Expanded(
            child: screens[index],
          ),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int i) {
    return IconButton(
      onPressed: () => setState(() => index = i),
      icon: Icon(
        icon,
        color: index == i ? Colors.white : Colors.white70,
        size: 30,
      ),
    );
  }
}
