import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/screens/main_chief_screen.dart';
import 'package:funds_and_events/screens/profile_chief_screen.dart';
import 'package:funds_and_events/widgets/chief_nav_bar.dart';


class ChiefScreen extends StatelessWidget {
  const ChiefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ThemeColors.scaffold,
        body: Stack(
          // alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0,
              bottom: 70,
              left: 0,
              right: 0,
              child: TabBarView(children: [
                const MainChiefScreen(),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.yellow,
                ),
                const ProfileChiefScreen(),
              ]),
            ),
            const Positioned(
              left: 0,
              right: 0,
              height: 70,
              bottom: 0,
              child: ChiefNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
