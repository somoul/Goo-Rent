import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goo_rent/helper/local_storage.dart';

class LocaleHelper {
  static Future<void> onCheckLanguages() async {
    var localeStr = await LocalStorage.readLocale();
    if (localeStr != '') {
      var locale = Locale(localeStr, '');
      Get.updateLocale(locale);
    } else {
      var localeStr = Get.deviceLocale?.languageCode ?? 'km';
      var locale = Locale(localeStr, '');
      Get.updateLocale(locale);
    }
  }
}
