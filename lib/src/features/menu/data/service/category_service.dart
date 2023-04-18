import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';
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
}
