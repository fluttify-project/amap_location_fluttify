import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_AMapLocationClientOption extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  static Future<String> getAPIKEY() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::getAPIKEY([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getAPIKEY', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isMockEnable() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isMockEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isMockEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setMockEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setMockEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setMockEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<int> getInterval() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getInterval([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getInterval', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setInterval(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setInterval([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setInterval', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isOnceLocation() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOnceLocation([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOnceLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOnceLocation(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOnceLocation([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOnceLocation', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isNeedAddress() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isNeedAddress([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isNeedAddress', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setNeedAddress(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setNeedAddress([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setNeedAddress', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isWifiActiveScan() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isWifiActiveScan([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isWifiActiveScan', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setWifiActiveScan(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setWifiActiveScan([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setWifiActiveScan', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isWifiScan() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isWifiScan([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isWifiScan', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setWifiScan(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setWifiScan([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setWifiScan', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationMode> getLocationMode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationMode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationMode.values[result];
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationMode(com_amap_api_location_AMapLocationClientOption_AMapLocationMode var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationMode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationMode', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol> getLocationProtocol() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationProtocol([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationProtocol', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol.values[result];
    }
  }
  
  static Future<void> setLocationProtocol(com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setLocationProtocol([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationProtocol', {"var0": var0.index});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isKillProcess() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isKillProcess([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isKillProcess', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setKillProcess(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setKillProcess([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setKillProcess', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isGpsFirst() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isGpsFirst([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isGpsFirst', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGpsFirst(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGpsFirst([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGpsFirst', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGpsFirstTimeout(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGpsFirstTimeout([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGpsFirstTimeout', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<int> getGpsFirstTimeout() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getGpsFirstTimeout([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getGpsFirstTimeout', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> clone() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::clone([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::clone', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<int> getHttpTimeOut() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getHttpTimeOut([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getHttpTimeOut', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setHttpTimeOut(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setHttpTimeOut([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setHttpTimeOut', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isOffset() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOffset([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOffset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOffset(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOffset([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOffset', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isLocationCacheEnable() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isLocationCacheEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isLocationCacheEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationCacheEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationCacheEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationCacheEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isOnceLocationLatest() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOnceLocationLatest([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOnceLocationLatest', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOnceLocationLatest(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOnceLocationLatest([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOnceLocationLatest', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<bool> isSensorEnable() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isSensorEnable([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isSensorEnable', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setSensorEnable(bool var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setSensorEnable([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setSensorEnable', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLastLocationLifeCycle(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLastLocationLifeCycle([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLastLocationLifeCycle', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<int> getLastLocationLifeCycle() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLastLocationLifeCycle([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLastLocationLifeCycle', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_GeoLanguage> getGeoLanguage() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getGeoLanguage([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getGeoLanguage', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_GeoLanguage.values[result];
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGeoLanguage(com_amap_api_location_AMapLocationClientOption_GeoLanguage var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGeoLanguage([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGeoLanguage', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  static Future<void> setDownloadCoordinateConvertLibrary(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setDownloadCoordinateConvertLibrary([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setDownloadCoordinateConvertLibrary', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<bool> isDownloadCoordinateConvertLibrary() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::isDownloadCoordinateConvertLibrary([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isDownloadCoordinateConvertLibrary', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getDeviceModeDistanceFilter() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getDeviceModeDistanceFilter([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getDeviceModeDistanceFilter', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setDeviceModeDistanceFilter(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setDeviceModeDistanceFilter([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setDeviceModeDistanceFilter', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationPurpose(com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationPurpose([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationPurpose', {"var1": var1.index, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result);
      return com_amap_api_location_AMapLocationClientOption()..refId = result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose> getLocationPurpose() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationPurpose([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationPurpose', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose.values[result];
    }
  }
  
  static Future<bool> isOpenAlwaysScanWifi() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::isOpenAlwaysScanWifi([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOpenAlwaysScanWifi', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<void> setOpenAlwaysScanWifi(bool var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setOpenAlwaysScanWifi([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOpenAlwaysScanWifi', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<void> setScanWifiInterval(int var0) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setScanWifiInterval([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setScanWifiInterval', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getScanWifiInterval() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getScanWifiInterval([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getScanWifiInterval', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}