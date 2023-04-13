class UserEditFormModel {
  final String? numberPhone;
  final String? email;
  final String? name;
  final String? password;
  final String? address;
  final String? job;

  UserEditFormModel({
    this.numberPhone,
    this.email,
    this.name,
    this.password,
    this.address,
    this.job,
  });

  Map<String, dynamic> toJson() {
    return {
      'number_phone': numberPhone,
      'email': email,
      'name': name,
      'password': password,
      'address': address,
      'job': job,
    };
  }
}
