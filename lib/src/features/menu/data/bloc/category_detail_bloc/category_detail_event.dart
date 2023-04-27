part of 'category_detail_bloc.dart';

abstract class CategoryDetailEvent extends Equatable {
  const CategoryDetailEvent();

  @override
  List<Object> get props => [];
}

class GetCategoryDetailEvent extends CategoryDetailEvent {
  final String id;

  const GetCategoryDetailEvent(this.id);

  @override
  List<Object> get props => [id];
}