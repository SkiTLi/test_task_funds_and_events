import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';


class NavBar extends StatefulWidget {
  final Color colorItem;
  final int numberOfItems;

  const NavBar(
      {Key? key,
      this.colorItem = ThemeColors.primary,
      required this.numberOfItems})
      : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState(
        colorIt: colorItem,
        numberOfIts: numberOfItems,
      );
}

class _NavBarState extends State<NavBar> {
  final Color colorIt;
  final int numberOfIts;

  _NavBarState({required this.colorIt, required this.numberOfIts});

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

      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < numberOfIts; i++) ...[
            _NavBarIcon(
              isActive: DefaultTabController.of(context).index == i,
              notActiveIcon: const NavBarItem(isActive: false),
              activeIcon: NavBarItem(
                isActive: true,
                colorActive: colorIt,
              ),
              onTap: () => _navigate(i),
            ),
            const SizedBox(
              width: 6,
            ),
          ]

        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final bool isActive;
  final Widget notActiveIcon;
  final Widget activeIcon;
  final VoidCallback onTap;

  const _NavBarIcon({
    Key? key,
    required this.isActive,
    required this.notActiveIcon,
    required this.activeIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, //for stable click
      child: Column(
        children: [
          SizedBox(
            width: isActive ? 22 : 14,
            height: 14,
            child: isActive ? activeIcon : notActiveIcon,
          ),
          const SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}


class NavBarItem extends StatelessWidget {
  final bool isActive;
  final Color colorActive;
  final Color color;

  const NavBarItem(
      {super.key,
        required this.isActive,
        this.colorActive = ThemeColors.primary,
        this.color = ThemeColors.secondary});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: isActive ? 16 : 8,
      decoration: BoxDecoration(
          color: isActive ? colorActive : color,
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
