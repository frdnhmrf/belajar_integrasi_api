import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/bloc/category_detail_bloc/category_detail_bloc.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_list_bloc/news_list_bloc.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum.dart';
import 'package:go_router/go_router.dart';

class DetailMenuScreen extends StatefulWidget {
  const DetailMenuScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<DetailMenuScreen> createState() => _DetailMenuScreenState();
}

class _DetailMenuScreenState extends State<DetailMenuScreen> {
  @override
  void initState() {
    context.read<CategoryDetailBloc>().add(GetCategoryDetailEvent(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailBloc, CategoryDetailState>(
      builder: (context, state) {
        if (state is CategoryDetailLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CategoryDetailError) {
          return const Center(
            child: Text('Terjadi Kesalahan'),
          );
        } else if (state is CategoryDetailSuccess) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                state.category.name!,
              ),
            ),
            body: BlocBuilder<NewsListBloc, NewsListState>(
              builder: (context, news) {
                if (news.status == Status.success) {
                  return ListView(
                    children: news.newsList.map(
                      (news) {
                        return NewsCard(
                          news: news,
                          onTap: () {
                            context.pushNamed(
                              AppRoute.detailNews.name,
                              params: {'id': news.id.toString()},
                            );
                          },
                        );
                      },
                    ).toList(),
                  );
                }
                return Text(state.category.news.toString());
              },
            ),
          );
        }
        return const Scaffold();
      },
    );
  }
}
