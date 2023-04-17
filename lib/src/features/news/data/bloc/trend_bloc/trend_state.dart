part of 'trend_bloc.dart';

class TrendState extends Equatable {
  final Status status;
  final NewsModel news;

  const TrendState({required this.status, required this.news});

  factory TrendState.initial() {
    return TrendState(status: Status.initial, news: NewsModel());
  }

  @override
  List<Object> get props => [status, news];

  TrendState copyWith({
    Status? status,
    NewsModel? news,
  }) {
    return TrendState(
      status: status ?? this.status,
      news: news ?? this.news,
    );
  }
}
