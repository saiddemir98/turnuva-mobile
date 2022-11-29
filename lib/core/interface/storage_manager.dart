abstract class LocalStorageManager {
  dynamic setData(String key, dynamic value);

  dynamic getData(dynamic key);

  dynamic clearValue(String key);

  dynamic clearAll();
}
