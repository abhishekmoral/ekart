import 'package:get_storage/get_storage.dart';

class XLocalStroage {
  static final XLocalStroage _instance = XLocalStroage._internal();

  factory XLocalStroage() {
    return _instance;
  }

  XLocalStroage._internal();

  final _storage = GetStorage();

  // Generic method to save data

  Future<void> saveData<X>(String key, X value) async {
    await _storage.write(key, value);
  }
  // Generic method to read data
  X? readData<X>(String key) {
    return _storage.read<X>(key);
  }
  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
  // Clear all data in storage.
  Future<void> clearAll() async {
    await _storage.erase();
  }
}