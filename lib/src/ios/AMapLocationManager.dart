import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationManager extends NSObject  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically", {'refId': refId});
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates", {'refId': refId});
    return result;
  }
  
  Future<int> get_locationTimeout() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_locationTimeout", {'refId': refId});
    return result;
  }
  
  Future<int> get_reGeocodeTimeout() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_reGeocodeTimeout", {'refId': refId});
    return result;
  }
  
  Future<bool> get_locatingWithReGeocode() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_locatingWithReGeocode", {'refId': refId});
    return result;
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final result = await _channel.invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await _channel.invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await _channel.invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_locationTimeout(int locationTimeout) async {
    await _channel.invokeMethod('AMapLocationManager::set_locationTimeout', {'refId': refId, "locationTimeout": locationTimeout});
  
  
  }
  
  Future<void> set_reGeocodeTimeout(int reGeocodeTimeout) async {
    await _channel.invokeMethod('AMapLocationManager::set_reGeocodeTimeout', {'refId': refId, "reGeocodeTimeout": reGeocodeTimeout});
  
  
  }
  
  Future<void> set_locatingWithReGeocode(bool locatingWithReGeocode) async {
    await _channel.invokeMethod('AMapLocationManager::set_locatingWithReGeocode', {'refId': refId, "locatingWithReGeocode": locatingWithReGeocode});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await _channel.invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation', {'refId': refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  

  // 生成方法们
  static Future<bool> headingAvailable() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager::headingAvailable([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::headingAvailable', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startUpdatingHeading() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::startUpdatingHeading([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::startUpdatingHeading', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopUpdatingHeading() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::stopUpdatingHeading([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::stopUpdatingHeading', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> dismissHeadingCalibrationDisplay() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::dismissHeadingCalibrationDisplay([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> startUpdatingLocation() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::startUpdatingLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::startUpdatingLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> stopUpdatingLocation() async {
    // 日志打印
    print('fluttify-dart: AMapLocationManager@$refId::stopUpdatingLocation([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationManager::stopUpdatingLocation', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}