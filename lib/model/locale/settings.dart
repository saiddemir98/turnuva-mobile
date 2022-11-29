import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean/core/interface/storage_manager.dart';
import 'package:clean/configuration/constants.dart';
import 'package:clean/helper/localization_helper.dart';

class Settings {
  Locale? _locale;
  ThemeMode? _themeMode;

  Locale get locale {
    return _locale ?? LocaleString.device;
  }

  set locale(Locale? locale) {
    if (locale != null) {
      _locale = locale;
      Get.updateLocale(locale);
      Get.find<LocalStorageManager>().setData(StorageKeyConstant.LocaleEngBool,
          locale == LocaleString.en ? true : false);
    }
  }

  ThemeMode get themeMode {
    return _themeMode ?? ThemeMode.system;
  }

  set themeMode(ThemeMode? themeMode) {
    if (themeMode != null) {
      _themeMode = themeMode;
      Get.changeThemeMode(themeMode);
      Get.find<LocalStorageManager>().setData(StorageKeyConstant.ThemeDarkBool,
          themeMode == ThemeMode.dark ? true : false);
    }
  }
}
