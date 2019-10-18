import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_location_LocationManagerBase on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setLocationOption(com_amap_api_location_AMapLocationClientOption var1) {
  
    debugPrint('setLocationOption::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> setLocationListener(com_amap_api_location_AMapLocationListener var1) {
  
    debugPrint('setLocationListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> startLocation() {
  
    debugPrint('startLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> stopLocation() {
  
    debugPrint('stopLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<com_amap_api_location_AMapLocation> getLastKnownLocation() {
  
    debugPrint('getLastKnownLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> startAssistantLocation() {
  
    debugPrint('startAssistantLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> stopAssistantLocation() {
  
    debugPrint('stopAssistantLocation::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> isStarted() {
  
    debugPrint('isStarted::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> unRegisterLocationListener(com_amap_api_location_AMapLocationListener var1) {
  
    debugPrint('unRegisterLocationListener::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> onDestroy() {
  
    debugPrint('onDestroy::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> disableBackgroundLocation(bool var1) {
  
    debugPrint('disableBackgroundLocation::kCallbackPool: $kCallbackPool');
  }
  
}