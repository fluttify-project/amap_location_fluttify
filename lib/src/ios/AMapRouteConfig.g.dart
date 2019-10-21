import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapRouteConfig extends NSObject  {
  // 生成getters
  Future<String> get_appScheme() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapRouteConfig::get_appScheme", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_appName() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapRouteConfig::get_appName", {'refId': refId});
  
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_startCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapRouteConfig::get_startCoordinate", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = result);
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<CLLocationCoordinate2D> get_destinationCoordinate() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapRouteConfig::get_destinationCoordinate", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = result);
    return CLLocationCoordinate2D()..refId = result;
  }
  

  // 生成setters
  Future<void> set_appScheme(String appScheme) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapRouteConfig::set_appScheme', {'refId': refId, "appScheme": appScheme});
  
  
  }
  
  Future<void> set_appName(String appName) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapRouteConfig::set_appName', {'refId': refId, "appName": appName});
  
  
  }
  
  Future<void> set_startCoordinate(CLLocationCoordinate2D startCoordinate) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapRouteConfig::set_startCoordinate', {'refId': refId, "startCoordinate": startCoordinate.refId});
  
  
  }
  
  Future<void> set_destinationCoordinate(CLLocationCoordinate2D destinationCoordinate) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapRouteConfig::set_destinationCoordinate', {'refId': refId, "destinationCoordinate": destinationCoordinate.refId});
  
  
  }
  

  // 生成方法们
  
}