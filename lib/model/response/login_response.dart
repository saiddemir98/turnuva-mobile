
import 'package:clean/model/entitiy/user.dart';
import 'package:clean/base/base_model.dart';

class LoginResponse extends BaseModel {
  String? accessToken;
  String? tokenType;
  List<String>? messages;
  User? user;

  LoginResponse({this.accessToken, this.tokenType, this.messages, this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    messages = json['messages'].cast<String>();
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
}
