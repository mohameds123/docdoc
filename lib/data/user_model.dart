class UserModel {
  final String name;
  final String pass;
  final String confirmationPass;
  final String gender;
  final String email;
  final String phone;

  UserModel({
    required this.name,
    required this.pass,
    required this.confirmationPass,
    required this.gender,
    required this.email,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] as String,
      pass: json['password'] as String,
      confirmationPass: json['password_confirmation'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'password': pass,
      'password_confirmation': confirmationPass,
      'gender': gender,
      'email': email,
      'phone': phone,
    };
  }
}
