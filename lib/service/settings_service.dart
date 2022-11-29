import 'package:clean/configuration/global_variable.dart';
import 'package:clean/helper/localization_helper.dart';
import 'package:clean/repository/storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsService extends GetxService {
  final StorageRepository _storageRepository = Get.find();

  Future<SettingsService> init() async {
    return this;
  }

  void _settings() {
    bool? isDark = _storageRepository.isDarkTheme();
    bool? isEng = _storageRepository.isEngLanguage();
    Global.settings.locale = (isEng == true ? LocaleString.en : null);
    Global.settings.themeMode = (isDark == true ? ThemeMode.dark : null);
  }
}
