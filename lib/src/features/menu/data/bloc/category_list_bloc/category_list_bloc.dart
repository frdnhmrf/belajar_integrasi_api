import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/service/category_service.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/enum.dart';

part 'category_list_event.dart';
part 'category_list_state.dart';

class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc() : super(CategoryListState.initial()) {
    on<GetCategoryListEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        final response = await CategoryService().getNewsList();
        emit(state.copyWith(status: Status.success, categoryList: response.data));
      } catch (e) {
        emit(
          state.copyWith(status: Status.error, errorMessage: e.toString()),
        );
      }
    });
  }
}
