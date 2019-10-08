import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationReGeocode extends NSObject with NSCoding, NSCopying {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<String> get_formattedAddress() async {
    final result = await _channel.invokeMethod("AMapLocationReGeocode::get_formattedAddress", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_formattedAddress(String formattedAddress) async {
    await _channel.invokeMethod('AMapLocationReGeocode::set_formattedAddress', {'refId': refId, "formattedAddress": formattedAddress});
  
  
  }
  

  // 生成方法们
  
}