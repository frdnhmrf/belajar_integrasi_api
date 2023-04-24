part of 'news_detail_bloc.dart';

abstract class NewsDetailEvent extends Equatable {
  const NewsDetailEvent();

  @override
  List<Object> get props => [];
}

class GetDetailNewsEvent extends NewsDetailEvent {
  final String id;

  const GetDetailNewsEvent({required this.id});

  @override
  List<Object> get props => [id];
}
