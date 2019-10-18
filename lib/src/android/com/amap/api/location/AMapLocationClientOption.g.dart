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