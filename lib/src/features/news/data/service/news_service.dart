import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/trend_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<int?> getIdNews() async {
    try {
      final response = await http.get(Uri.parse('$baseUrlApi/trend'));

      if (response.statusCode == 200) {
        Trend trend = Trend.fromJson(
          jsonDecode(response.body)['data'],
        );
        return trend.idNews;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<NewsModel> getNewsTrendById(int idNewsTrend) async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrlApi/news/$idNewsTrend'));

      if (response.statusCode == 200) {
        NewsModel newsModel = NewsModel.fromJson(
          jsonDecode(response.body)['data'],
        );
        return newsModel;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
