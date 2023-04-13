

class Trend {
  int? id;
  String? userCreated;
  String? dateCreated;
  String? userUpdated;
  String? dateUpdated;
  int? idNews;

  Trend(
      {this.id,
      this.userCreated,
      this.dateCreated,
      this.userUpdated,
      this.dateUpdated,
      this.idNews});

  factory Trend.fromJson(Map<String, dynamic> json) => Trend(
        id: json['id'],
        userCreated: json['user_created'],
        dateCreated: json['date_created'],
        userUpdated: json['user_updated'],
        dateUpdated: json['date_updated'],
        idNews: json['news'],
      );
}
