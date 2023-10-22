import 'package:flutter/material.dart';
import 'package:funds_and_events/constance/theme_constant.dart';
import 'package:funds_and_events/models/news.dart';

class NewsPreview extends StatelessWidget {
  final News news;

  const NewsPreview({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
          color: ThemeColors.grey44, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: ThemeFonts.rb12,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      // softWrap: true,
                      news.title ?? "there must be a title of news"),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    news.publishedAt ??
                        'there must be a published time of news',
                    style: ThemeFonts.rg10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: SizedBox(
              height: 98,
              width: 98,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                clipBehavior: Clip.hardEdge,
                borderOnForeground: false,
                elevation: 0,
                child: Image.network(
                    news.urlToImage ?? 'https://webznam.ru/_bl/16/41608074.jpg',
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
