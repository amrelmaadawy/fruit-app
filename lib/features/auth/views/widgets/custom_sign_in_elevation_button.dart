import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomSignInElevationButton extends StatelessWidget {
  const CustomSignInElevationButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.icon,
    required this.textColor,
    this.iconColor,
  });
  final String text;
  final Color color;
  final Color textColor;
  final Color? iconColor;
  final void Function() onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: color),

      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(kDefPadding),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 20),
            SizedBox(width: 10),
            Text(text, style: TextStyle(fontSize: 15, color: textColor)),
          ],
        ),
      ),
    );
  }
}
