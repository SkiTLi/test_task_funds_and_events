import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/widgets/profile_tab.dart';

class ProfileChiefScreen extends StatelessWidget {
  const ProfileChiefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.scaffold,
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                    color: ThemeColors.scaffold,
                    borderRadius: BorderRadius.circular(12)),
                child: const Text("мой профиль", style: ThemeFonts.bb32),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              child: Container(
                height: 112,
                decoration: BoxDecoration(
                    color: ThemeColors.grey3,
                    border: Border.all(color: ThemeColors.grey4),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16),
                      child: SizedBox(
                        height: 72,
                        width: 72,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36)),
                          clipBehavior: Clip.hardEdge,
                          borderOnForeground: false,
                          elevation: 0,
                          child: Image.asset('assets/images/Man.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Андрей Бушев", style: ThemeFonts.bb18),
                        const SizedBox(height: 10),
                        Container(
                          height: 24,
                          // width: 72,
                          decoration: BoxDecoration(
                              color: ThemeColors.dark,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 2),
                            child: Text("ID: 1241", style: ThemeFonts.bw14),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: ThemeColors.grey1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
              child: Text("Основное", style: ThemeFonts.rg14),
            ),
            ProfileTab(
                icon: Icons.doorbell_outlined,
                title: "Центр уведомлений",
                onTap: () => {}),
            ProfileTab(
                icon: Icons.calendar_today_outlined,
                title: "Мои мероприятия",
                onTap: () => {}),
            ProfileTab(
                icon: Icons.cases_outlined, title: "Сервисы", onTap: () => {}),
            ProfileTab(
                icon: Icons.check_circle_outline,
                title: "Статус бейдж и ТС",
                onTap: () => {}),
            ProfileTab(
                icon: Icons.settings_outlined,
                title: "Настройки аккаунта",
                onTap: () => {}),
            const Expanded(
                child: SizedBox(
              height: 18,
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
              child: Container(
                height: 56,
                // width: 112,

                decoration: BoxDecoration(
                    color: ThemeColors.grey3,
                    border: Border.all(color: ThemeColors.grey4),
                    borderRadius: BorderRadius.circular(12)),

                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 16),
                      child: Text('Выйти из аккаунта', style: ThemeFonts.br15),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 20),
                      child: Icon(
                        Icons.output_outlined,
                        color: ThemeColors.red,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
