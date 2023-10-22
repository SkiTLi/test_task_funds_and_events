import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/lists_constant.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/controller_and_cubit/get_news/get_news_cubit.dart';

class CategoryNavBar extends StatefulWidget {
  const CategoryNavBar({Key? key}) : super(key: key);

  @override
  State<CategoryNavBar> createState() => _CategoryNavBarState();
}

class _CategoryNavBarState extends State<CategoryNavBar> {
  void _doByIndex(int indexBy) {
    DefaultTabController.of(context).index = indexBy;
    setState(() {});

    GetNewsCubit.get(context).getNews(ListsConstant.categories[indexBy]);
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //
  //   DefaultTabController.of(context).addListener(() {
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: ThemeColors.scaffold,
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          GetNewsCubit.get(context)
              .getNews(ListsConstant.categories[index]); //default downloading
          return _NavBarItem(
            isActive: DefaultTabController.of(context).index == index,
            onTap: () => _doByIndex(index),
            nameItem: ListsConstant.categories[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 2,
          );
        },
        itemCount: ListsConstant.categories.length,
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final bool isActive;
  final String nameItem;
  final Widget notActiveIcon;
  final Widget activeIcon;
  final VoidCallback onTap;

  const _NavBarItem({
    Key? key,
    required this.isActive,
    required this.onTap,
    required this.nameItem,
    this.notActiveIcon = const SizedBox(),
    this.activeIcon = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque, //for stable click
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(
                width: 22,
                height: 22,
                child: isActive ? activeIcon : notActiveIcon),
            const SizedBox(
              width: 2,
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: isActive ? ThemeColors.primary : ThemeColors.grey44,
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                nameItem,
                style: isActive ? ThemeFonts.bw14 : ThemeFonts.rb14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
