class SendMessageForm {
  String text;
  String? messageId;
  String? userId;

  SendMessageForm({required this.text, this.messageId, this.userId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['messageId'] = messageId;
    data['userId'] = userId;
    return data;
  }
}
