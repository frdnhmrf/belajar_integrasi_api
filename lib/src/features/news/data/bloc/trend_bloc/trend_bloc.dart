import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/service/news_service.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum.dart';

part 'trend_event.dart';
part 'trend_state.dart';

class TrendBloc extends Bloc<TrendEvent, TrendState> {
  TrendBloc() : super(TrendState.initial()) {
    on<GetTrendEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        final news = await NewsService().getTrend();
        emit(state.copyWith(status: Status.success, news: news));
      } catch (e) {
        emit(state.copyWith(status: Status.error));
      }
    });
  }
}
