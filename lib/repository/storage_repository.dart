import 'package:get/get.dart';
import 'package:clean/configuration/constants.dart';
import 'package:clean/core/interface/storage_manager.dart';

class StorageRepository {
  final LocalStorageManager _localStorageManager = Get.find();

  bool? isFirstOpen() {
    return _localStorageManager.getData(StorageKeyConstant.FirstOpenBool);
  }

  String? getJwt() {
    return _localStorageManager.getData(StorageKeyConstant.JwtTokenString);
  }

  bool? isDarkTheme() {
    return _localStorageManager.getData(StorageKeyConstant.ThemeDarkBool);
  }

  bool? isEngLanguage() {
    return _localStorageManager.getData(StorageKeyConstant.LocaleEngBool);
  }

  void setJwt(String? accessToken) {
    _localStorageManager.setData(
        StorageKeyConstant.JwtTokenString, accessToken);
  }

  void setIsFirstOpen(bool isFirstOpen) {
    _localStorageManager.setData(StorageKeyConstant.FirstOpenBool, isFirstOpen);
  }
}
