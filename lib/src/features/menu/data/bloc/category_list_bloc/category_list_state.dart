part of 'category_list_bloc.dart';

class CategoryListState extends Equatable {
  final Status status;
  final List<CategoryModel> categoryList;
  final String errorMessage;
  const CategoryListState({
    required this.status,
    required this.categoryList,
    required this.errorMessage,
  });

  factory CategoryListState.initial() {
    return const CategoryListState(
      status: Status.initial,
      categoryList: [],
      errorMessage: "",
    );
  }

  @override
  List<Object> get props => [status, categoryList, errorMessage];

  CategoryListState copyWith({
    Status? status,
    List<CategoryModel>? categoryList,
    String? errorMessage,
  }) {
    return CategoryListState(
      status: status ?? this.status,
      categoryList: categoryList ?? this.categoryList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
