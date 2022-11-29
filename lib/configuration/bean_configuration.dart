import 'package:get/get.dart';
import 'package:clean/provider/list_provider.dart';
import 'package:clean/core/interface/network_manager.dart';
import 'package:clean/core/interface/storage_manager.dart';
import 'package:clean/repository/auth_repository.dart';
import 'package:clean/repository/storage_repository.dart';
import 'package:clean/repository/user_repository.dart';
import 'package:clean/service/auth_service.dart';
import 'package:clean/service/user_service.dart';
import 'package:clean/helper/network_helper.dart';
import 'package:clean/helper/storage_helper.dart';

class BeanConfiguration {
  Future<void> dependencies() async {
    await localStorageManagereInit;
    await networkManagerInit;
    await repositoryBean;
    await serviceBean;
    await providerBean;
  }

  Future<void> get repositoryBean async {
    Get.put<UserRepository>(UserRepository());
    Get.put<AuthRepository>(AuthRepository());
  }

  Future<void> get serviceBean async {
    Get.put<UserService>(UserService());
    Get.put<AuthService>(AuthService());
  }

  Future<void> get networkManagerInit async {
    Get.put<NetworkManager>(DioNetworkImpl());
  }

  Future<void> get localStorageManagereInit async {
    await Get.putAsync<LocalStorageManager>(() => HiveStorageImpl().init());
    Get.put(StorageRepository());
  }

  Future<void> get providerBean async {
    Get.lazyPut<ListProvider>(() => ListProvider());
  }
}
