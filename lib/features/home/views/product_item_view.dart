import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/home/views/desktop/product_item_desktop_view.dart';
import 'package:fruit_app/features/home/views/mobile/product_item_mobile_view.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProductItemMobileView(),
      desktop: ProductItemDesktoptView(),
    );
  }
}
