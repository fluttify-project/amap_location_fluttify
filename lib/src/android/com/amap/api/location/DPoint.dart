import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_DPoint extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<double> getLongitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.DPoint@$refId::getLongitude([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.DPoint::getLongitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLongitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.DPoint@$refId::setLongitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.DPoint::setLongitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<double> getLatitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.DPoint@$refId::getLatitude([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.DPoint::getLatitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLatitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.DPoint@$refId::setLatitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.DPoint::setLatitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}