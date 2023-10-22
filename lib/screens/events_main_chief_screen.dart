import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';

class Event {
  final String id;
  final Widget widgBack;
  final Widget widgIcon;
  final String term;
  final String category;
  final String title;
  final String place;

  Event(
      {required this.id,
      required this.widgBack,
      required this.widgIcon,
      required this.term,
      required this.category,
      required this.title,
      required this.place});
}

final List<Event> eventList = [
  Event(
      id: "0",
      widgBack: Container(color: Colors.indigo),
      widgIcon: const Icon(
        size: 88,
        Icons.balance_outlined,
        color: Colors.grey,
      ),
      term: '11–13 мая',
      category: 'Экспофорум ',
      title: 'Петербургский международный юридический форум 2023',
      place: 'Санкт-Петербург, Россия'),
  Event(
      id: "1",
      widgBack: Image.asset(
        "assets/images/Audience.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      widgIcon: const Icon(
        size: 88,
        Icons.insert_chart_outlined_rounded,
        color: Colors.grey,
      ),
      term: '14–17 июня',
      category: 'Экспофорум ',
      title: 'Санкт-Петербургский международный экономический форум 2023',
      place: 'Санкт-Петербург, Россия'),
  Event(
      id: "2",
      widgBack: Image.asset(
        "assets/images/Man.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      widgIcon: const Icon(
        size: 88,
        Icons.ssid_chart_outlined,
        color: Colors.grey,
      ),
      term: '5–8 сентября',
      category: 'ДФУ',
      title: 'Восточный экономический форум 2023',
      place: 'Владивосток, Россия'),
];

class EventsMainChiefScreen extends StatefulWidget {
  const EventsMainChiefScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<EventsMainChiefScreen> {
  int _current = 2;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.scaffold,
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: eventList
                .map((item) => Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      child: Stack(
                        children: <Widget>[
                          item.widgBack,
                          const Positioned(
                            right: 20,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    GoButton(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  item.widgIcon,
                                  Text(
                                      // textAlign: TextAlign.center,
                                      '${item.term} | ${item.category}',
                                      style: ThemeFonts.r14),
                                  Text(
                                    // textDirection: TextDirection.ltr,
                                    // textAlign: TextAlign.left,
                                    item.title,
                                    style: ThemeFonts.r20,
                                    // overflow: TextOverflow.ellipsis,
                                    // maxLines: 4,
                                    softWrap: true,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                      // textAlign: TextAlign.center,
                                      item.place,
                                      style: ThemeFonts.r12),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
                height: 1000,

                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: eventList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 16.0 : 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // shape: BoxShape.circle,
                    color: Colors.black
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class GoButton extends StatelessWidget {
  const GoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Icon(
            Icons.forward_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
