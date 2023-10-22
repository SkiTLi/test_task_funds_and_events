import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/screens/events_main_chief_screen.dart';
import 'package:funds_and_events/screens/news_main_chief_screen.dart';
import 'package:funds_and_events/widgets/chief_app_bar.dart';


class MainChiefScreen extends StatelessWidget {
  const MainChiefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ThemeColors.scaffold,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                left: 0,
                right: 0,
                height: 140,
                //72+16+36+16
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 72,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 45,
                              child: SvgPicture.asset(
                                'assets/images/logoMain4.svg',
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 40,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                  color: ThemeColors.grey44,
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                child: Text(
                                  "О фонде",
                                  style: ThemeFonts.rd16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  color: ThemeColors.grey44,
                                  borderRadius: BorderRadius.circular(12)),
                              child: SvgPicture.asset(
                                'assets/images/bell.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(height: 36, child: ChiefAppBar()),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),

              const Positioned(
                top: 140,
                bottom: 0,
                left: 0,
                right: 0,
                child: TabBarView(children: [
                  EventsMainChiefScreen(),
                  NewsMainChiefScreen(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
