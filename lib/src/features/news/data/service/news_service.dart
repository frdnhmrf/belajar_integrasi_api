import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<int> getIdNewsTrend() async {
    final response = await http.get(Uri.parse('$baseUrlApi/trend'));
    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }
    final locationJson = jsonDecode(response.body)['data'] as List;
    return locationJson.first['news'] as int;
  }

  Future<NewsModel> fetchNewsTrend(int idNews) async {
    final response = await http.get(Uri.parse('$baseUrlApi/news/$idNews'));
    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }
    final locationJson = jsonDecode(response.body)['data'];
    return NewsModel.fromJson(locationJson);
  }

  Future<NewsModel> getTrend() async {
    final idNews = await getIdNewsTrend();
    final trend = await fetchNewsTrend(idNews);
    return trend;
  }

  Future<NewsResponse> getNewsList() async {
    final response = await http.get(Uri.parse('$baseUrlApi/news'));
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

  Future<NewsModel> getDetailNews(String id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrlApi/news/$id'));

      if (response.statusCode == 200) {
        NewsModel newsModel =
            NewsModel.fromJson(jsonDecode(response.body)['data']);
        return newsModel;
      }
      throw Exception('Failed to load data');
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }
}
