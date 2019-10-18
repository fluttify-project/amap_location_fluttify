import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationPoint extends NSObject with NSCoding, NSCopying {
  // 生成getters
  Future<double> get_latitude() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPoint::get_latitude", {'refId': refId});
    return result;
  }
  
  Future<double> get_longitude() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPoint::get_longitude", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_latitude(double latitude) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPoint::set_latitude', {'refId': refId, "latitude": latitude});
  
  
  }
  
  Future<void> set_longitude(double longitude) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPoint::set_longitude', {'refId': refId, "longitude": longitude});
  
  
  }
  

  // 生成方法们
  static Future<AMapLocationPoint> locationWithLatitudeLongitude(double lat, double lon) async {
    // 日志打印
    print('fluttify-dart: AMapLocationPoint::locationWithLatitude([\'lat\':$lat, \'lon\':$lon])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPoint::locationWithLatitudeLongitude', {"lat": lat, "lon": lon});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return AMapLocationPoint()..refId = result;
    }
  }
  
}