import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin AMapLocationManagerDelegate on NSObject {
  Future<void> amapLocationManagerDoRequireLocationAuth(AMapLocationManager manager, CLLocationManager locationManager) {}
  
  Future<bool> amapLocationManagerShouldDisplayHeadingCalibration(AMapLocationManager manager) {}
  
}