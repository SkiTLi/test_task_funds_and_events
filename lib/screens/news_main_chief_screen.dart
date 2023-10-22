import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funds_and_events/constance/lists_constant.dart';
import 'package:funds_and_events/controller_and_cubit/get_news/get_news_cubit.dart';
import 'package:funds_and_events/widgets/category_nav_bar.dart';
import 'package:funds_and_events/widgets/news_preview.dart';

class NewsMainChiefScreen extends StatelessWidget {
  const NewsMainChiefScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: ListsConstant.categories.length,
      child: Column(
        children: [
          const SizedBox(height: 50, child: CategoryNavBar()),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: BlocConsumer<GetNewsCubit, GetNewsState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return ConditionalBuilder(
                        condition: state is! GetNewsLoading,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  separatorBuilder: (context, itemIndex) {
                                    return const SizedBox(
                                      height: 8,
                                    );
                                  },

                                  // child: ListView.builder(

                                  physics: const BouncingScrollPhysics(),
                                  itemCount:
                                      GetNewsCubit.get(context).news.length,
                                  itemBuilder: (context, index) {
                                    return NewsPreview(
                                      news: GetNewsCubit.get(context).news[index],
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                        fallback: (BuildContext context) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }
}


