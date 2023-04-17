class CategoryResponse {
  List<CategoryModel>? data;

  CategoryResponse({this.data});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CategoryModel>[];
      json['data'].forEach((v) {
        data!.add(new CategoryModel.fromJson(v));
      });
    }
  }
}

class CategoryModel {
  int? id;
  String? userCreated;
  String? dateCreated;
  String? userUpdated;
  String? dateUpdated;
  String? name;
  String? subname;
  String? categoryImage;
  List<int>? news;

  CategoryModel(
      {this.id,
      this.userCreated,
      this.dateCreated,
      this.userUpdated,
      this.dateUpdated,
      this.name,
      this.subname,
      this.categoryImage,
      this.news});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userCreated = json['user_created'];
    dateCreated = json['date_created'];
    userUpdated = json['user_updated'];
    dateUpdated = json['date_updated'];
    name = json['name'];
    subname = json['subname'];
    categoryImage = json['category_image'];
    news = json['news'].cast<int>();
  }
}
