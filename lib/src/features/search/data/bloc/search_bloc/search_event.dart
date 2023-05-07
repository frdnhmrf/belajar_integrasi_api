part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GetNewsSearchEvent extends SearchEvent {
  final String title;

  const GetNewsSearchEvent({required this.title});

  @override
  List<Object> get props => [];
}
