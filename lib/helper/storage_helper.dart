import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:clean/core/interface/storage_manager.dart';

class HiveStorageImpl extends GetxService implements LocalStorageManager {
  late Box _box;
  final String boxName = "vgstorage";
  Future<HiveStorageImpl> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    Hive.init("${directory.path}/$boxName");
    _box = await Hive.openBox(boxName);
    return this;
  }

  @override
  dynamic clearAll() {
    return _box.clear();
  }

  @override
  dynamic clearValue(String key) {
    return _box.delete(key);
  }

  @override
  dynamic getData(dynamic key) {
    return _box.get(key);
  }

  @override
  dynamic setData(String key, dynamic value) {
    return _box.put(key, value);
  }
}
