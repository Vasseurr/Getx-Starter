import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../constants/secure_storage_keys.dart';

class SecureStorageManager {
  late FlutterSecureStorage _secureStorage;
  static final SecureStorageManager _instance = SecureStorageManager._init();

  static SecureStorageManager get instance => _instance;

  SecureStorageManager._init() {
    _secureStorage = const FlutterSecureStorage();
  }

  Future<void> setStringValue(SecureStorageKeys key, String value) async {
    await _secureStorage.write(key: key.toString(), value: value);
  }

  Future<String?> getStringValue(SecureStorageKeys key) async =>
      await _secureStorage.read(key: key.toString());

  Future<void> deleteAll() async => await _secureStorage.deleteAll();
}
