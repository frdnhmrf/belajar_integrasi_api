import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/data/service/category_service.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';

part 'category_detail_event.dart';
part 'category_detail_state.dart';

class CategoryDetailBloc
    extends Bloc<CategoryDetailEvent, CategoryDetailState> {
  CategoryDetailBloc() : super(CategoryDetailInitial()) {
    on<GetCategoryDetailEvent>((event, emit) async {
      emit(CategoryDetailLoading());
      try {
        final response = await CategoryService().getDetailCategory(event.id);
        emit(CategoryDetailSuccess(category: response));
      } catch (e) {
        emit(CategoryDetailError(message: e.toString()));
      }
    });
  }
}
