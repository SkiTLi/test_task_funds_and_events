import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class ProfileTab extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileTab(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: ThemeColors.grey3,
            border: Border.all(color: ThemeColors.grey4),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
              child: Icon(
                icon,
                color: ThemeColors.primary,
              ),
            ),
            Text(title, style: ThemeFonts.bb15),
            const Expanded(child: SizedBox()),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Icon(
                Icons.arrow_forward_ios,
                color: ThemeColors.grey1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
