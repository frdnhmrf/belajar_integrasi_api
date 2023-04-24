part of 'news_detail_bloc.dart';

abstract class NewsDetailState extends Equatable {
  const NewsDetailState();

  @override
  List<Object> get props => [];
}

class NewsDetailInitial extends NewsDetailState {}

class NewsDetailLoading extends NewsDetailState {}

class NewsDetailSuccess extends NewsDetailState {
  final NewsModel news;

  const NewsDetailSuccess({required this.news});

  @override
  List<Object> get props => [news];
}

class NewsDetailError extends NewsDetailState {
  final String message;

  const NewsDetailError({required this.message});

  @override
  List<Object> get props => [message];
}
