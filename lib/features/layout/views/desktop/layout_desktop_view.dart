import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/basket/views/basket_view.dart';
import 'package:fruit_app/features/favorite/views/favorite_view.dart';
import 'package:fruit_app/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/features/more/views/more_view.dart';
import 'package:fruit_app/features/orders/views/order_view.dart';

class LayoutDesktopView extends StatefulWidget {
  const LayoutDesktopView({super.key});

  @override
  State<LayoutDesktopView> createState() => _LayoutDesktopViewState();
}

class _LayoutDesktopViewState extends State<LayoutDesktopView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeView(),
    OrderView(),
    BasketView(),
    FavoriteView(),
    MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          _getTitle(_currentIndex),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      drawer: Drawer(
        width: 280,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: kPrimaryColor),
              child: const Center(
                child: Text(
                  "Fruit Market",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            _buildDrawerItem(
              index: 0,
              icon: Icons.home_outlined,
              text: "Home",
            ),
            _buildDrawerItem(
              index: 1,
              icon: Icons.assignment_outlined,
              text: "Orders",
            ),
            _buildDrawerItem(
              index: 2,
              icon: Icons.shopping_basket_outlined,
              text: "Basket",
            ),
            _buildDrawerItem(
              index: 3,
              icon: Icons.favorite_border_outlined,
              text: "Favorite",
            ),
            _buildDrawerItem(
              index: 4,
              icon: Icons.menu,
              text: "More",
            ),
          ],
        ),
      ),

    
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
    );
  }

  
  Widget _buildDrawerItem({
    required int index,
    required IconData icon,
    required String text,
  }) {
    bool selected = _currentIndex == index;

    return ListTile(
      leading: Icon(
        icon,
        color: selected ? kPrimaryColor : Colors.black54,
        size: 24,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: selected ? kPrimaryColor : Colors.black87,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      selected: selected,
      onTap: () {
        setState(() => _currentIndex = index);
        Navigator.pop(context);
      },
    );
  }
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Orders";
      case 2:
        return "Basket";
      case 3:
        return "Favorite";
      case 4:
        return "More";
      default:
        return "";
    }
  }
}
