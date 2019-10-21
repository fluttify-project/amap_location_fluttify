import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_AMapLocationQualityReport extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setWifiAble(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setWifiAble([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setWifiAble', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setGpsStatus(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setGpsStatus([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setGpsStatus', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setGPSSatellites(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setGPSSatellites([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setGPSSatellites', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isWifiAble() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::isWifiAble([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::isWifiAble', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getGPSStatus() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getGPSStatus([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getGPSStatus', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getGPSSatellites() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getGPSSatellites([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getGPSSatellites', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getNetworkType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getNetworkType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getNetworkType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setNetworkType(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setNetworkType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setNetworkType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getNetUseTime() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getNetUseTime([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getNetUseTime', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setNetUseTime(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setNetUseTime([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setNetUseTime', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setInstallHighDangerMockApp(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setInstallHighDangerMockApp([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setInstallHighDangerMockApp', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isInstalledHighDangerMockApp() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::isInstalledHighDangerMockApp([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::isInstalledHighDangerMockApp', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setLocationMode(com_amap_api_location_AMapLocationClientOption_AMapLocationMode var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setLocationMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setLocationMode', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getAdviseMessage() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getAdviseMessage([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getAdviseMessage', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}