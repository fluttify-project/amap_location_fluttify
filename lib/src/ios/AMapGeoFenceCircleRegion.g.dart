import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceCircleRegion extends AMapGeoFenceRegion  {
  // 生成getters
  Future<CLLocationCoordinate2D> get_center() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceCircleRegion::get_center", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<double> get_radius() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceCircleRegion::get_radius", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}