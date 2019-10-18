import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceRegion extends NSObject with NSCopying {
  // 生成getters
  Future<String> get_identifier() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceRegion::get_identifier", {'refId': refId});
    return result;
  }
  
  Future<String> get_customID() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceRegion::get_customID", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}