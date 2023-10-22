import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/screens/chief_screen.dart';
import 'package:funds_and_events/widgets/intro_item.dart';
import 'package:funds_and_events/widgets/my_button.dart';
import 'package:funds_and_events/widgets/nav_bar.dart';

class IntroductoryScreen extends StatelessWidget {
  const IntroductoryScreen({
    Key? key,
  }) : super(key: key);

  void _navigateChiefScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ChiefScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ThemeColors.grey,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              child: TabBarView(children: [
                IntroItem(
                  isNextButton: true,
                  widget: Image.asset("assets/images/Audience.jpg",
                      fit: BoxFit.none),
                  title: "Уникальные сервисы",
                  description:
                      "Воспользуйтесь удобством специальных сервисов для участников мероприятий",
                  myButton:
                      MyButton(text: "Далее", onTap: () {}, isActive: true),
                ),
                IntroItem(
                  isNextButton: true,
                  widget: Image.asset("assets/images/Auditorium.jpg",
                      fit: BoxFit.cover),
                  title: "Центр уведомлений",
                  description:
                      "Сразу после наступления события, мы уведомим вас сообщением на мобильном устройстве ",
                  myButton:
                      MyButton(text: "Далее", onTap: () {}, isActive: true),
                ),
                IntroItem(
                  isNextButton: false,
                  widget:
                      Image.asset("assets/images/Man.jpg", fit: BoxFit.cover),
                  title: "Программа мероприятий",
                  description:
                      "Всегда под рукой актуальная информация о программе мероприятия",
                  myButton: MyButton(
                      text: "Начать",
                      onTap: () => _navigateChiefScreen(context),
                      isActive: true),
                ),
              ]),
            ),
            const Positioned(
              left: 0,
              right: 0,
              height: 52,
              bottom: 0,
              child: NavBar(
                numberOfItems: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
