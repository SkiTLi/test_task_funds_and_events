import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class ChiefNavBar extends StatefulWidget {
  const ChiefNavBar({Key? key}) : super(key: key);

  @override
  State<ChiefNavBar> createState() => _ChiefNavBarState();
}

class _ChiefNavBarState extends State<ChiefNavBar> {
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
      color: ThemeColors.scaffold,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavBarIcon(
            isActive: DefaultTabController.of(context).index == 0,
            notActiveIcon: SvgPicture.asset(
              'assets/images/home.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/homeActive.svg',
            ),
            onTap: () => _navigate(0),
            nameIcon: 'главная',
          ),
          _NavBarIcon(
            isActive: DefaultTabController.of(context).index == 1,
            notActiveIcon: SvgPicture.asset(
              'assets/images/calendar.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/calendarActive.svg',
            ),
            onTap: () => _navigate(1),
            nameIcon: 'мероприятия',
          ),
          _NavBarIcon(
            isActive: DefaultTabController.of(context).index == 2,
            notActiveIcon: SvgPicture.asset(
              'assets/images/comment.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/commentActive.svg',
            ),
            onTap: () => _navigate(2),
            nameIcon: 'чат',
          ),
          _NavBarIcon(
            isActive: DefaultTabController.of(context).index == 3,
            notActiveIcon: SvgPicture.asset(
              'assets/images/profile.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/profileActive.svg',
            ),
            onTap: () => _navigate(3),
            nameIcon: 'мой профиль',
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final bool isActive;
  final String nameIcon;
  final Widget notActiveIcon;
  final Widget activeIcon;
  final VoidCallback onTap;

  const _NavBarIcon({
    Key? key,
    required this.isActive,
    required this.notActiveIcon,
    required this.activeIcon,
    required this.onTap,
    required this.nameIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, //for stable click
      child: SizedBox(
        width: 90,
        child: Column(
          children: [
            SizedBox(
                width: 22,
                height: 22,
                child: isActive ? activeIcon : notActiveIcon),
            const SizedBox(
              height: 2,
            ),
            Text(
              nameIcon,
              style: isActive ? ThemeFonts.rb12 : ThemeFonts.rg12,
            ),
            isActive
                ? Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                        color: ThemeColors.primary,
                        borderRadius: BorderRadius.circular(8)),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
