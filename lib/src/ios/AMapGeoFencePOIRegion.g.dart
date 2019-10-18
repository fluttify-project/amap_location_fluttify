import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFencePOIRegion extends AMapGeoFenceCircleRegion  {
  // 生成getters
  Future<AMapLocationPOIItem> get_POIItem() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFencePOIRegion::get_POIItem", {'refId': refId});
    return AMapLocationPOIItem()..refId = result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}