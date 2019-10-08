import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationRegion extends NSObject with NSCopying {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<String> get_identifier() async {
    final result = await _channel.invokeMethod("AMapLocationRegion::get_identifier", {'refId': refId});
    return result;
  }
  
  Future<bool> get_notifyOnEntry() async {
    final result = await _channel.invokeMethod("AMapLocationRegion::get_notifyOnEntry", {'refId': refId});
    return result;
  }
  
  Future<bool> get_notifyOnExit() async {
    final result = await _channel.invokeMethod("AMapLocationRegion::get_notifyOnExit", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_notifyOnEntry(bool notifyOnEntry) async {
    await _channel.invokeMethod('AMapLocationRegion::set_notifyOnEntry', {'refId': refId, "notifyOnEntry": notifyOnEntry});
  
  
  }
  
  Future<void> set_notifyOnExit(bool notifyOnExit) async {
    await _channel.invokeMethod('AMapLocationRegion::set_notifyOnExit', {'refId': refId, "notifyOnExit": notifyOnExit});
  
  
  }
  

  // 生成方法们
  Future<bool> containsCoordinate(CLLocationCoordinate2D coordinate) async {
    // 日志打印
    print('fluttify-dart: AMapLocationRegion@$refId::containsCoordinate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationRegion::containsCoordinate', {"coordinate": coordinate.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}