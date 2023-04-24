import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/service/news_service.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';

part 'news_detail_event.dart';
part 'news_detail_state.dart';

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  NewsDetailBloc() : super(NewsDetailInitial()) {
    on<GetDetailNewsEvent>((event, emit) async {
      emit(NewsDetailLoading());
      try {
        final response = await NewsService().getDetailNews(event.id);
        emit(NewsDetailSuccess(news: response));
      } catch (e) {
        emit(NewsDetailError(message: e.toString()));
      }
    });
  }
}
