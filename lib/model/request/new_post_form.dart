import 'package:dio/dio.dart';

class NewPostForm {
  MultipartFile? image;
  String? description;
  bool isCommentable;

  NewPostForm({this.image, this.description, required this.isCommentable});

  Map<String, dynamic> toJson() {
    if (image == null && description == null) {
      //TODO BURADA KENDİ EXCEPTİONLARIMIZI OLUŞTURUCAZ..
      throw Exception();
    }
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['description'] = description;
    data['is_commentable'] = isCommentable;
    return data;
  }
}
