import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class ChiefAppBar extends StatefulWidget {
  const ChiefAppBar({super.key});

  @override
  State<ChiefAppBar> createState() => _ChiefAppBarState();
}

class _ChiefAppBarState extends State<ChiefAppBar> {
  void _navigate(int index) {
    DefaultTabController.of(context).index = index;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    DefaultTabController.of(context).addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemeColors.grey44, borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: _NavBarIcon(
              isActive: DefaultTabController.of(context).index == 0,
              onTap: () => _navigate(0),
              nameIcon: 'Мероприятие',
            ),
          ),
          Expanded(
            child: _NavBarIcon(
              isActive: DefaultTabController.of(context).index == 1,
              onTap: () => _navigate(1),
              nameIcon: 'Новости',
            ),
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final bool isActive;
  final String nameIcon;
  final VoidCallback onTap;

  const _NavBarIcon({
    Key? key,
    required this.isActive,
    required this.onTap,
    required this.nameIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isActive
          ? Container(
              // height: 32,
              // width: 300,
              decoration: BoxDecoration(
                  color: ThemeColors.scaffold,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  nameIcon,
                  style: ThemeFonts.rb12,
                ),
              ),
            )
          : Center(
              child: Container(
                color: ThemeColors.transparent,
                // height: 22,
                child: Center(
                  child: Text(
                    nameIcon,
                    style: ThemeFonts.rb12,
                  ),
                ),
              ),
            ),
    );
  }
}
