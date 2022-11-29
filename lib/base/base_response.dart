class BaseResponse<T> {
  String? type;
  String? message;
  T? data;

  BaseResponse.fromJson(Map<String, dynamic> json, Constructor<T> constructor) {
    type = json['type'];
    message = json['message'];
    data = json['data'] != null ? constructor.call(json['data']) : null;
  }
}

typedef Constructor<T> = T Function(Map<String, dynamic> json);
