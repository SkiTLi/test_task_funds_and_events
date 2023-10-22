import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funds_and_events/models/news.dart';
import 'package:funds_and_events/providers/news_provider.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  static GetNewsCubit get(context) => BlocProvider.of(context);
  List news = [];

  List searchNews = [];

  // bool isDark=false;

  Future<void> getNews(String category) async {
    emit(GetNewsLoading());

    try {
      List newsAsJson = await NewsProvider.getNews(category);
      news = newsAsJson.map((e) => News.fromJson(e)).toList();

      emit(GetNewsSuccess());
    } catch (error) {
      emit(GetNewsFailure(error: error.toString()));
    }
  }

  Future<void> getSearch(String searchWord) async {
    emit(SearchNewsLoading());
    try {
      List newsAsJson = await NewsProvider.getSearch(searchWord);
      searchNews = newsAsJson.map((e) => News.fromJson(e)).toList();
      emit(SearchNewsSuccess());
    } catch (error) {
      emit(SearchNewsFailure(error: error.toString()));
    }
  }
}
