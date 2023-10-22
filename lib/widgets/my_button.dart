import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class MyButton extends StatelessWidget {
  final bool isActive;
  final String text;
  final VoidCallback onTap;

  const MyButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: isActive ? ThemeColors.primary : ThemeColors.secondary,
            borderRadius: BorderRadius.circular(12)),
        child: Expanded(
          child: Center(
              child: Text(
            text,
            style: isActive ? ThemeFonts.r15 : ThemeFonts.rp15,
          )),
        ),
      ),
    );
  }
}
