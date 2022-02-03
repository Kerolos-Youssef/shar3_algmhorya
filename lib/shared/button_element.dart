import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonElement extends StatelessWidget {
  final IconData icon;
  final String text;
  final double iconSize;
  final Color? textColor;
  final Color? iconColor;
  final Function()? onTapped;
  ButtonElement({
    required this.icon,
    required this.text,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.iconSize = 40,
    this.onTapped,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Column(
        children: [
          Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
