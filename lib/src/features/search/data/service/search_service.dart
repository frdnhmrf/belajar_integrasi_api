import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class SearchService {
  Future<NewsResponse> searchNews(String title) async {
    final url = '$baseUrlApi/news?filter[title][_contains]=$title';
    final response = await http.get(Uri.parse(url));

    try {
      if (response.statusCode == 200) {
        NewsResponse newsResponse =
            NewsResponse.fromJson(jsonDecode(response.body));
        return newsResponse;
      }
      throw Exception('Failed to load data');
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}
