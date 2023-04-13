class SignUpFormModel {
  final String? name;
  final String? email;
  final String? username;
  final String? password;
  final String? passwordConfirm;
  final String? address;
  final String? numberPhone;

  SignUpFormModel({
    this.numberPhone,
    this.name,
    this.email,
    this.username,
    this.password,
    this.passwordConfirm,
    this.address,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'username': username,
      'email': email,
      'password': password,
      'passwordConfirm': passwordConfirm,
      'address': address,
      'number_phone': numberPhone,
    };
  }
}
