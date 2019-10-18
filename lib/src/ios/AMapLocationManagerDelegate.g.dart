import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin AMapLocationManagerDelegate on NSObject {
  

  

  @mustCallSuper
  Future<void> amapLocationManagerDoRequireLocationAuth(AMapLocationManager manager, CLLocationManager locationManager) {
    kCallbackPool[manager.refId] = manager;
    kCallbackPool[locationManager.refId] = locationManager;
    debugPrint('amapLocationManagerDoRequireLocationAuth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> amapLocationManagerDidFailWithError(AMapLocationManager manager, NSError error) {
    kCallbackPool[manager.refId] = manager;
    kCallbackPool[error.refId] = error;
    debugPrint('amapLocationManagerDidFailWithError::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> amapLocationManagerDidChangeAuthorizationStatus(AMapLocationManager manager, CLAuthorizationStatus status) {
    kCallbackPool[manager.refId] = manager;
    debugPrint('amapLocationManagerDidChangeAuthorizationStatus::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<bool> amapLocationManagerShouldDisplayHeadingCalibration(AMapLocationManager manager) {
    kCallbackPool[manager.refId] = manager;
    debugPrint('amapLocationManagerShouldDisplayHeadingCalibration::kCallbackPool: $kCallbackPool');
  }
  
}