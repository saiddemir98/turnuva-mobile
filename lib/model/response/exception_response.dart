class ExceptionResponse {
  String? statusKey;
  int? statusCode;
  List<String>? messages;

  ExceptionResponse({this.statusKey, this.statusCode, this.messages});

  ExceptionResponse.fromJson(Map<String, dynamic> json) {
    statusKey = json['status_key'];
    statusCode = json['status_code'];
    messages =
        json["messages"] != null ? json["messages"].cast<String>() : null;
  }
}
