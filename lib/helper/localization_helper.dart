import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean/configuration/language/en_US.dart';
import 'package:clean/configuration/language/tr_TR.dart';

class LocaleString extends Translations {
  static Locale device = Get.deviceLocale ?? tr;
  static const Locale tr = Locale("tr");
  static const Locale en = Locale("en");
  @override
  Map<String, Map<String, String>> get keys => {
        ///Türkçe
        "tr_TR": tr_TR,

        ///ingilizce
        "en_US": en_US,
      };
}
