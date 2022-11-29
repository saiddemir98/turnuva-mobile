class RegisterForm {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? passwordConfirmation;
  bool? kvkk = false;
  bool? hizmetSozlesmesi = false;
  bool? communicationContract = false;

  RegisterForm(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.passwordConfirmation,
      this.kvkk,
      this.hizmetSozlesmesi,
      this.communicationContract});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['password'] = password;
    data['password_confirmation'] = passwordConfirmation;
    data['kvkk'] = kvkk;
    data['hizmet_sozlesmesi'] = hizmetSozlesmesi;
    data['communication_contract'] = communicationContract;
    return data;
  }

  //TODO burayı doldur!
  formValid(){

  }

}
