import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_AMapLocationClient extends Ref_Android  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setLocationOption(com_amap_api_location_AMapLocationClientOption var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::setLocationOption([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::setLocationOption', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setLocationListener(com_amap_api_location_AMapLocationListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::setLocationListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::setLocationListener', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::startLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::startLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::stopLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::stopLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocation> getLastKnownLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::getLastKnownLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::getLastKnownLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return com_amap_api_location_AMapLocation()..refId = result;
    }
  }
  
  Future<void> startAssistantLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::startAssistantLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::startAssistantLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopAssistantLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::stopAssistantLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::stopAssistantLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<String> getVersion() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::getVersion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::getVersion', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<void> setApiKey(String var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient::setApiKey([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::setApiKey', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isStarted() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::isStarted([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::isStarted', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> unRegisterLocationListener(com_amap_api_location_AMapLocationListener var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::unRegisterLocationListener([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::unRegisterLocationListener', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> onDestroy() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::onDestroy([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::onDestroy', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> disableBackgroundLocation(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient@$refId::disableBackgroundLocation([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::disableBackgroundLocation', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  static Future<String> getDeviceId(android_content_Context var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClient::getDeviceId([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.location.AMapLocationClient::getDeviceId', {"var0": var0.refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}