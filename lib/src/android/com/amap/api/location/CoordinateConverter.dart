import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_CoordinateConverter extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<com_amap_api_location_CoordinateConverter> from(com_amap_api_location_CoordinateConverter_CoordType var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordinateConverter@$refId::from([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordinateConverter::from', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_location_CoordinateConverter()..refId = result;
    }
  }
  
  Future<com_amap_api_location_CoordinateConverter> coord(com_amap_api_location_DPoint var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordinateConverter@$refId::coord([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordinateConverter::coord', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_location_CoordinateConverter()..refId = result;
    }
  }
  
  Future<com_amap_api_location_DPoint> convert() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordinateConverter@$refId::convert([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordinateConverter::convert', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_location_DPoint()..refId = result;
    }
  }
  
  static Future<bool> isAMapDataAvailable(double var0, double var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordinateConverter::isAMapDataAvailable([\'var0\':$var0, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordinateConverter::isAMapDataAvailable', {"var0": var0, "var2": var2});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<double> calculateLineDistance(com_amap_api_location_DPoint var0, com_amap_api_location_DPoint var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordinateConverter::calculateLineDistance([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordinateConverter::calculateLineDistance', {"var0": var0.refId, "var1": var1.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}