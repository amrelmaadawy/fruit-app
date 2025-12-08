import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

import 'package:fruit_app/features/favorite/views/widgets/favorite_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Column(
      children: [
        Text(
          'Favorite View',
          style: TextStyle(
            fontSize: isLandscape ? 2.5.sp : 5.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return FavoriteItem();
            },
          ),
        ),
      ],
    );
  }
}
