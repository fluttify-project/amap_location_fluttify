import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceDistrictRegion extends AMapGeoFenceRegion  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<AMapLocationDistrictItem> get_districtItem() async {
    final result = await _channel.invokeMethod("AMapGeoFenceDistrictRegion::get_districtItem", {'refId': refId});
    return AMapLocationDistrictItem()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}