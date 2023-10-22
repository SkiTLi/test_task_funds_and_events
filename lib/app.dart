import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funds_and_events/controller_and_cubit/get_news/get_news_cubit.dart';

import 'package:funds_and_events/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(fontFamily: 'Sansation'),
          home: LoginScreen(),
        );
      },
    );
  }
}
