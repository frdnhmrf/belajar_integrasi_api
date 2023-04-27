import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<CategoryResponse> getNewsList() async {
    final response = await http.get(Uri.parse('$baseUrlApi/category'));
    try {
      if (response.statusCode == 200) {
        CategoryResponse newsResponse =
            CategoryResponse.fromJson(jsonDecode(response.body));
        return newsResponse;
      }
      throw Exception('Failed to load data');
    } catch (e) {
      rethrow;
    }
  }

  Future<CategoryModel> getDetailCategory(String id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrlApi/category/$id'));

      if (response.statusCode == 200) {
        CategoryModel categoryModel =
            CategoryModel.fromJson(jsonDecode(response.body)['data']);
        return categoryModel;
      }
      throw Exception('Failed to load data');
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }

  Future<List<NewsModel>> getNewsByCategory(List<String> id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrlApi/news'));

      if (response.statusCode == 200) {
        List<NewsModel> newsModel = (jsonDecode(response.body)['data']
                as List)
            .map((e) => NewsModel.fromJson(e))
            .toList();
        return newsModel;
      }
      throw Exception('Failed to load data');
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}
