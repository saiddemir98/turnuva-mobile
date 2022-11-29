class SendQuestionForm {
  String? name;
  String? email;
  String? subject;
  String? message;

  SendQuestionForm({this.name, this.email, this.subject, this.message});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['subject'] = subject;
    data['message'] = message;
    return data;
  }
}
