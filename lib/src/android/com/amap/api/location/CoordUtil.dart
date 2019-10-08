import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_CoordUtil extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<int> convertToGcj(List<double> var0, List<double> var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordUtil::convertToGcj([\'var0\':$var0, \'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordUtil::convertToGcj', {"var0": var0, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<bool> isLoadedSo() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordUtil::isLoadedSo([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordUtil::isLoadedSo', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setLoadedSo(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.CoordUtil::setLoadedSo([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.CoordUtil::setLoadedSo', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}