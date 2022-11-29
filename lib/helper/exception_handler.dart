import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:clean/model/exception/wrong_email_exception.dart';
import 'package:clean/model/response/exception_response.dart';

abstract class ExceptionHandler {
  static void exceptionHandler() {
    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      if (exception is DioError) {
        final ExceptionResponse response =
            ExceptionResponse.fromJson(exception.response?.data);
        String error = errorMessage(response.messages);
        Get.defaultDialog(radius: 5, title: "Hata", middleText: error);
      } else if (exception is WrongEmailException) {
        //TODO localize edilecek
        Get.defaultDialog(
            radius: 5, title: "Hata", middleText: "Geçersiz email");
      } else {
        Get.defaultDialog(
            radius: 5, title: "Hata", middleText: "Bilinmeyen bir hata oluştu!");
      }
      return true;
    };
  }

  static String errorMessage(List<String?>? messages) {
    String errorMessage = "";
    messages?.forEach((element) {
      errorMessage += ("$element\n");
    });
    return errorMessage;
  }
}
