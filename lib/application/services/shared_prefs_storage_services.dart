// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:html' as html;

class SharedPrefsStorageService {
  late final SharedPreferences? _prefs;

  Future<SharedPrefsStorageService> init() async {
    if (!kIsWeb) {
      _prefs = await SharedPreferences.getInstance();
    }
    return this;
  }

  bool getBoolValue(String key) {
    if (kIsWeb) {
      final value = html.window.localStorage[key];
      if (value == null) {
        return false;
      }
      return value == 'true';
    } else {
      return _prefs?.getBool(key) ?? false;
    }
  }

  String getStringValue(String key) {
    if (kIsWeb) {
      return html.window.localStorage[key] ?? "";
    } else {
      return _prefs?.getString(key) ?? "";
    }
  }

  List<String> getStringListValue(String key) {
    if (kIsWeb) {
      final listString = html.window.localStorage[key];
      return listString != null ? listString.split(',') : [];
    } else {
      return _prefs?.getStringList(key) ?? [];
    }
  }

  Future<void> setStringValue(String key, String value) async {
    if (kIsWeb) {
      html.window.localStorage[key] = value;
    } else {
      await _prefs?.setString(key, value);
    }
  }

  Future<void> setStringList(String key, List<String> value) async {
    if (kIsWeb) {
      html.window.localStorage[key] = value.join(',');
    } else {
      await _prefs?.setStringList(key, value);
    }
  }

  Future<void> setBoolValue(String key, bool value) async {
    if (kIsWeb) {
      html.window.localStorage[key] = value.toString();
    } else {
      await _prefs?.setBool(key, value);
    }
  }

  Future<void> removeKey(String key) async {
    if (kIsWeb) {
      html.window.localStorage.remove(key);
    } else {
      await _prefs?.remove(key);
    }
  }
}
