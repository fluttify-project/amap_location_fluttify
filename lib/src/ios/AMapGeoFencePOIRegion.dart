import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFencePOIRegion extends AMapGeoFenceCircleRegion  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<AMapLocationPOIItem> get_POIItem() async {
    final result = await _channel.invokeMethod("AMapGeoFencePOIRegion::get_POIItem", {'refId': refId});
    return AMapLocationPOIItem()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}