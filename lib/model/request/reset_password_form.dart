import 'package:get/get.dart';
import 'package:clean/model/exception/wrong_email_exception.dart';

class ResetPassword {
  String? email;

  ResetPassword({this.email});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    return data;
  }

  //TODO burayı doldur!
  
}
