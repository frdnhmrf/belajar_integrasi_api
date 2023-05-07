import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/bloc/category_detail_bloc/category_detail_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/bloc/category_list_bloc/category_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_detail_bloc/news_detail_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_list_bloc/news_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/trend_bloc/trend_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/search/data/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/search/data/service/search_service.dart';

import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';

void main() async {
  final api = await SearchService().searchNews('jokowi');
  print(api);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TrendBloc>(
          create: (context) => TrendBloc()..add(GetTrendEvent()),
        ),
        BlocProvider<NewsListBloc>(
          create: (context) => NewsListBloc()..add(GetNewsListEvent()),
        ),
        BlocProvider<CategoryListBloc>(
          create: (context) => CategoryListBloc()..add(GetCategoryListEvent()),
        ),
        BlocProvider<NewsDetailBloc>(
          create: (context) => NewsDetailBloc(),
        ),
        BlocProvider<CategoryDetailBloc>(
          create: (context) => CategoryDetailBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: whiteColor,
          appBarTheme: const AppBarTheme(
            actionsIconTheme: IconThemeData(),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // background (button) color
              foregroundColor: Colors.white, // foreground (text) color
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
