import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelper {
  static final StorageHelper _instance = StorageHelper._internal();

  late FlutterSecureStorage flutterSecureStorage;

  factory StorageHelper() {
    return _instance;
  }

  StorageHelper._internal() {
    flutterSecureStorage = const FlutterSecureStorage();
  }

  Future<String> read({required String key}) async {
    return await flutterSecureStorage.read(key: key) ?? '';
  }

  Future<List> readList({required String key}) async {
    String? encodedList = await flutterSecureStorage.read(key: key);
    if (encodedList != null) {
      List<dynamic> decodedList = jsonDecode(encodedList);
      return decodedList.cast<String>();
    }
    return [];
  }

  write({required String key, required String value}) async {
    await flutterSecureStorage.write(key: key, value: value);
  }

  writeList({required String key, required List<String> value}) async {
    String encodedList = jsonEncode(value);
    await flutterSecureStorage.write(key: key, value: encodedList);
  }

  remove({required String key}) async {
    await flutterSecureStorage.delete(key: key);
  }

  removeAll() async {
    debugPrint('>> VARIABLES CLEARED');
    await flutterSecureStorage.deleteAll();
  }
}
