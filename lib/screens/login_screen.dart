import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funds_and_events/screens/introductory_screen.dart';
import 'package:funds_and_events/widgets/my_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isActiveNow = true;

  void _navigateSearchIngredientsScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const IntroductoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset('assets/images/logoMain4.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: MyButton(
                isActive: isActiveNow,
                text: 'Войти через ЕЛК',
                onTap: () {
                  setState(() {
                    isActiveNow = isActiveNow ? isActiveNow : !isActiveNow;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: MyButton(
                isActive: !isActiveNow,
                text: 'Войти без авторизации',
                onTap: () {
                  setState(() {
                    isActiveNow = !isActiveNow ? isActiveNow : !isActiveNow;
                  });
                  _navigateSearchIngredientsScreen(context);
                },
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
