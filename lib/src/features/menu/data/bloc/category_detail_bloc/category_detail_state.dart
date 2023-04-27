part of 'category_detail_bloc.dart';

abstract class CategoryDetailState extends Equatable {
  const CategoryDetailState();

  @override
  List<Object> get props => [];
}

class CategoryDetailInitial extends CategoryDetailState {}

class CategoryDetailLoading extends CategoryDetailState {}

class CategoryDetailSuccess extends CategoryDetailState {
  final CategoryModel category;

  const CategoryDetailSuccess({required this.category});

  @override
  List<Object> get props => [category];
}

class CategoryDetailError extends CategoryDetailState {
  final String message;

  const CategoryDetailError({required this.message});
  @override
  List<Object> get props => [message];
}
