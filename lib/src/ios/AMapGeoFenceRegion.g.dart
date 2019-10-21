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
  
  Future<AMapGeoFenceRegionStatus> get_fenceStatus() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceRegion::get_fenceStatus", {'refId': refId});
  
    return AMapGeoFenceRegionStatus.values[result];
  }
  
  Future<AMapGeoFenceRegionType> get_regionType() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceRegion::get_regionType", {'refId': refId});
  
    return AMapGeoFenceRegionType.values[result];
  }
  

  // 生成setters
  Future<void> set_fenceStatus(AMapGeoFenceRegionStatus fenceStatus) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceRegion::set_fenceStatus', {'refId': refId, "fenceStatus": fenceStatus.index});
  
  
  }
  
  Future<void> set_regionType(AMapGeoFenceRegionType regionType) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceRegion::set_regionType', {'refId': refId, "regionType": regionType.index});
  
  
  }
  

  // 生成方法们
  
}