import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/service/news_service.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum.dart';

part 'news_list_event.dart';
part 'news_list_state.dart';

class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  NewsListBloc() : super(NewsListState.initial()) {
    on<GetNewsListEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));

      try {
        final response = await NewsService().getNewsList();

        emit(state.copyWith(
          status: Status.success,
          newsList: response.data,
        ));
      } catch (e) {
        emit(
          state.copyWith(
            status: Status.error,
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }
}
