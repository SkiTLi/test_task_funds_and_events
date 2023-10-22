import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funds_and_events/app.dart';
import 'package:funds_and_events/controller_and_cubit/get_news/get_news_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => GetNewsCubit()),
  ], child: const App()));
}
