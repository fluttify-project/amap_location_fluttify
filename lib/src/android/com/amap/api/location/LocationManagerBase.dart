import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_location_LocationManagerBase on java_lang_Object {
  Future<void> setLocationOption(com_amap_api_location_AMapLocationClientOption var1) {}
  
  Future<void> setLocationListener(com_amap_api_location_AMapLocationListener var1) {}
  
  Future<void> startLocation() {}
  
  Future<void> stopLocation() {}
  
  Future<com_amap_api_location_AMapLocation> getLastKnownLocation() {}
  
  Future<void> startAssistantLocation() {}
  
  Future<void> stopAssistantLocation() {}
  
  Future<bool> isStarted() {}
  
  Future<void> unRegisterLocationListener(com_amap_api_location_AMapLocationListener var1) {}
  
  Future<void> onDestroy() {}
  
  Future<void> disableBackgroundLocation(bool var1) {}
  
}