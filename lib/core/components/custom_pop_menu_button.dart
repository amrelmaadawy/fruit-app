import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomPopMenuButton extends StatelessWidget {
  const CustomPopMenuButton({super.key, required this.title});
  
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth >= 1024;
        bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
        
        double fontSize = isWeb ? 18 : (isLandscape ? 14 : 3.sp);
        double iconSize = isWeb ? 24 : (isLandscape ? 20 : 20);

        return PopupMenuButton<String?>(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: kBorderColor),
              borderRadius: BorderRadius.circular(kDefBorderRaduis),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isWeb ? 12 : (isLandscape ? 10 : 8),
                vertical: isWeb ? 8 : (isLandscape ? 6 : 5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_downward, size: iconSize),
                  SizedBox(width: isWeb ? 8 : (isLandscape ? 6 : 4)),
                  Text(
                    title,
                    style: TextStyle(fontSize: fontSize),
                  ),
                ],
              ),
            ),
          ),
          onSelected: (value) {},
          itemBuilder: (_) => [
            PopupMenuItem<String?>(
              value: null,
              child: Text(
                title,
                style: TextStyle(fontSize: fontSize),
              ),
            ),
          ],
        );
      },
    );
  }
}
