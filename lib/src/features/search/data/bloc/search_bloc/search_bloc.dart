import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/features/search/data/service/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<GetNewsSearchEvent>((event, emit) async {
      emit(SearchLoading());
      try {
        final response = await SearchService().searchNews(event.title);
        emit(SearchSuccess(newsList: response.data!));
      } catch (e) {
        emit(SearchError(message: e.toString()));
      }
    });
  }
}
