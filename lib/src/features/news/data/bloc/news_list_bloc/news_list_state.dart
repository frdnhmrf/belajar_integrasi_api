// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'news_list_bloc.dart';

class NewsListState extends Equatable {
  final Status status;
  final List<NewsModel> newsList;
  final String errorMessage;
  const NewsListState({
    required this.status,
    required this.newsList,
    required this.errorMessage,
  });

  factory NewsListState.initial() {
    return const NewsListState(
      status: Status.initial,
      newsList: [],
      errorMessage: "",
    );
  }

  @override
  List<Object> get props => [status, newsList, errorMessage];

  NewsListState copyWith({
    Status? status,
    List<NewsModel>? newsList,
    String? errorMessage,
  }) {
    return NewsListState(
      status: status ?? this.status,
      newsList: newsList ?? this.newsList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
