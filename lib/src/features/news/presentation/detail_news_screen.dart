// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html/parser.dart';

import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/bloc/news_detail_bloc/news_detail_bloc.dart';

class DetailNewsScreen extends StatefulWidget {
  final String id;
  const DetailNewsScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<DetailNewsScreen> createState() => _DetailNewsScreenState();
}

class _DetailNewsScreenState extends State<DetailNewsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<NewsDetailBloc>().add(GetDetailNewsEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsDetailBloc, NewsDetailState>(
      builder: (context, state) {
        if (state is NewsDetailLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is NewsDetailError) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is NewsDetailSuccess) {
          String date = state.news.dateCreated!
              .substring(0, 10)
              .split('-')
              .reversed
              .join('-');
          String time = state.news.dateCreated!.substring(11, 16);
          var content = parse(state.news.content!);
          return Scaffold(
              appBar: AppBar(
                title: Image.asset(
                  'assets/ic_kompas_title.png',
                  fit: BoxFit.cover,
                  height: 30,
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                children: [
                  gapH24,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        state.news.category.toString(),
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      gapW12,
                      Text(
                        '$date, $time WIB',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                  gapH24,
                  Text(
                    state.news.title.toString(),
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  gapH24,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'http://localhost:8055/assets/${state.news.newsImage}',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  gapH16,
                  RichText(
                    text: TextSpan(
                      text: 'Penulis: ',
                      style: blackTextStyle.copyWith(fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: state.news.author.toString(),
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapH16,
                  // News
                  RichText(
                    textAlign: TextAlign.justify  ,
                    text: TextSpan(
                      text: 'KOMPAS.com - ',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: content.body!.text,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        }

        return const SizedBox();
      },
    );
  }
}
