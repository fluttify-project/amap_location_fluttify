import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceRegion extends NSObject with NSCopying {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<String> get_identifier() async {
    final result = await _channel.invokeMethod("AMapGeoFenceRegion::get_identifier", {'refId': refId});
    return result;
  }
  
  Future<String> get_customID() async {
    final result = await _channel.invokeMethod("AMapGeoFenceRegion::get_customID", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}