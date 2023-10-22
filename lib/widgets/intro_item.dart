import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class IntroItem extends StatelessWidget {
  final Widget widget;
  final String title;
  final String description;
  final Widget myButton;
  final bool isNextButton;
  final VoidCallback? onTapNextButton;

  const IntroItem({
    super.key,
    required this.widget,
    required this.title,
    required this.description,
    required this.myButton,
    this.isNextButton = false,
    this.onTapNextButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: SizedBox(
                height: double.infinity,
                width: double.infinity, //for web
                child: widget)),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ThemeColors.transparent, ThemeColors.dark],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          right: 20,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    NextButton(
                      isActive: isNextButton,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Text(textAlign: TextAlign.center, title, style: ThemeFonts.r20),
                const SizedBox(height: 12),
                Text(
                    textAlign: TextAlign.center,
                    description,
                    style: ThemeFonts.r16),
                const SizedBox(height: 10),
                myButton,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NextButton extends StatelessWidget {
  final bool isActive;

  const NextButton({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: isActive
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: ThemeColors.semiTrans,
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                  child: Text(
                'Пропустить',
                style: ThemeFonts.r12,
              )),
            )
          : const SizedBox(),
    );
  }
}
