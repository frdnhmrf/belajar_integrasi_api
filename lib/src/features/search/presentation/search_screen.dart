import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kompas_app_clone/src/common_widgets/news_card_index.dart';
import 'package:flutter_kompas_app_clone/src/constants/app_sizes.dart';
import 'package:flutter_kompas_app_clone/src/constants/theme.dart';
import 'package:flutter_kompas_app_clone/src/features/search/data/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_kompas_app_clone/src/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();
  bool _showClearButton = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        _showClearButton = controller.text.isNotEmpty;
      });
    });
  }

  void onSearch() {
    if (controller.text.isNotEmpty) {
      context
          .read<SearchBloc>()
          .add(GetNewsSearchEvent(title: controller.text));
    } else {
      return;
    }
  }

  Widget _getClearButton() {
    if (!_showClearButton) {
      return const SizedBox();
    }

    return IconButton(
      onPressed: () {
        controller.clear();
        onSearch();
      },
      icon: const Icon(Icons.clear),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
        ),
      ),
      body: Column(
        children: [
          Container(
            color: lightGreyColor,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  hintText: 'Masukan kata kunci pencarian',
                  suffixIcon: _getClearButton(),
                ),
                onChanged: (text) {
                  onSearch();
                },
                onSubmitted: (text) {
                  onSearch();
                }),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchSuccess) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: state.newsList.length,
                      itemBuilder: (context, index) {
                        return NewsCardIndex(
                          onTap: () {
                            context.pushNamed(
                              AppRoute.detailNews.name,
                              params: {
                                'id': state.newsList[index].id.toString()
                              },
                            );
                          },
                          title: state.newsList[index].title.toString(),
                          subtitle: state.newsList[index].subtitle.toString(),
                          nameCategory:
                              state.newsList[index].category!.toString(),
                          release: state.newsList[index].dateCreated.toString(),
                          image: state.newsList[index].newsImage.toString(),
                        );
                      }),
                );
              } else if(state is SearchError) {
                return Center(
                  child: Text(state.message),
                );
              } else if(state is SearchLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } 
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
