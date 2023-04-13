class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? address;
  final String? token;
  final String? username;
  final String? cardNumber;
  final String? job;
  final String? password;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.address,
    this.token,
    this.username,
    this.cardNumber,
    this.password,
    this.job,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        token: json['token'],
        username: json['username'],
        cardNumber: json['card_number'],
        job: json['job'],
      );

  UserModel copyWith({
    String? name,
    String? email,
    int? balance,
    String? job,
    String? password,
    String? username,
  }) {
    return UserModel(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
      username: username ?? this.username,
      job: job ?? this.job,
      password: password ?? this.password,
      address: address,
      token: token,
      cardNumber: cardNumber,
    );
  }
}
