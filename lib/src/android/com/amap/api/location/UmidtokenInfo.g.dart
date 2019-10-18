import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_UmidtokenInfo extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<String> getUmidtoken() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.UmidtokenInfo::getUmidtoken([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.UmidtokenInfo::getUmidtoken', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setLocAble(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.UmidtokenInfo::setLocAble([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.UmidtokenInfo::setLocAble', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setUmidtoken(android_content_Context var0, String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.UmidtokenInfo::setUmidtoken([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.UmidtokenInfo::setUmidtoken', {"var0": var0.refId, "var1": var1});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}