import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFencePolygonRegion extends AMapGeoFenceRegion  {
  // 生成getters
  Future<CLLocationCoordinate2D> get_coordinates() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFencePolygonRegion::get_coordinates", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<int> get_count() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFencePolygonRegion::get_count", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  
}