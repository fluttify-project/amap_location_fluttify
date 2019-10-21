import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_location_LocationManagerBase on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setLocationOption(com_amap_api_location_AMapLocationClientOption var1) {
  
    debugPrint('setLocationOption::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setLocationListener(com_amap_api_location_AMapLocationListener var1) {
  
    debugPrint('setLocationListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> startLocation() {
  
    debugPrint('startLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> stopLocation() {
  
    debugPrint('stopLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_location_AMapLocation> getLastKnownLocation() {
  
    debugPrint('getLastKnownLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> startAssistantLocation() {
  
    debugPrint('startAssistantLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> stopAssistantLocation() {
  
    debugPrint('stopAssistantLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isStarted() {
  
    debugPrint('isStarted::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> unRegisterLocationListener(com_amap_api_location_AMapLocationListener var1) {
  
    debugPrint('unRegisterLocationListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> onDestroy() {
  
    debugPrint('onDestroy::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> disableBackgroundLocation(bool var1) {
  
    debugPrint('disableBackgroundLocation::kNativeObjectPool: $kNativeObjectPool');
  }
  
}