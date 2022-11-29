import 'package:clean/base/base_model.dart';

class User extends BaseModel {
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? avatar;
  int? companyId;
  String? email;
  int? role;

  User(
      {this.id,
      this.name,
      this.firstName,
      this.lastName,
      this.avatar,
      this.companyId,
      this.email,
      this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
    companyId = json['company_id'];
    email = json['email'];
    role = json['role'];
  }
}
