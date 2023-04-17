class NewsResponse {
  List<NewsModel>? data;

  NewsResponse({this.data});

  NewsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <NewsModel>[];
      json['data'].forEach((v) {
        data!.add(NewsModel.fromJson(v));
      });
    }
  }
}

class NewsModel {
  int? id;
  String? userCreated;
  String? dateCreated;
  String? userUpdated;
  String? dateUpdated;
  String? title;
  String? subtitle;
  String? content;
  String? newsImage;
  String? author;
  int? category;

  NewsModel(
      {this.id,
      this.userCreated,
      this.dateCreated,
      this.userUpdated,
      this.dateUpdated,
      this.title,
      this.subtitle,
      this.content,
      this.newsImage,
      this.author,
      this.category});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userCreated = json['user_created'];
    dateCreated = json['date_created'];
    userUpdated = json['user_updated'];
    dateUpdated = json['date_updated'];
    title = json['title'];
    subtitle = json['subtitle'];
    content = json['content'];
    newsImage = json['news_image'];
    author = json['author'];
    category = json['category'];
  }
}
