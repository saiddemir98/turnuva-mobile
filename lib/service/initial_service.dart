import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean/repository/storage_repository.dart';
import 'package:clean/repository/user_repository.dart';
import 'package:clean/configuration/global_variable.dart';
import 'package:clean/helper/localization_helper.dart';
import 'package:clean/router/routers.dart';

class InitialService extends GetxService {
  final StorageRepository _storageRepository = Get.find();
  final UserRepository _userRepository = Get.find();

  Future<InitialService> init() async {
    _settings();
    await _firstCheckin();
    return this;
  }

  Future<void> _firstCheckin() async {
    bool? isFirstOpen = _storageRepository.isFirstOpen();
    if (isFirstOpen == null || isFirstOpen) {
      Routes.INITIAL = Routes.SLIDER;
      return;
    }
    String? jwt = _storageRepository.getJwt();
    if (jwt == null) {
      Routes.INITIAL = Routes.LOGIN;
    } else {
      try {

        Routes.INITIAL= Routes.BASESCREEN;
      } catch (e) {
        Routes.INITIAL = Routes.LOGIN;
      }
    }
  }

  void _settings() {
    bool? isDark = _storageRepository.isDarkTheme();
    bool? isEng = _storageRepository.isEngLanguage();
    Global.settings.locale = (isEng == true ? LocaleString.en : null);
    Global.settings.themeMode = (isDark == true ? ThemeMode.dark : null);
  }
}
