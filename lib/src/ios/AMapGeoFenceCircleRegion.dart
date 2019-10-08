import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceCircleRegion extends AMapGeoFenceRegion  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<CLLocationCoordinate2D> get_center() async {
    final result = await _channel.invokeMethod("AMapGeoFenceCircleRegion::get_center", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}