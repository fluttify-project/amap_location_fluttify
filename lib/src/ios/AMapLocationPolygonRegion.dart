import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationPolygonRegion extends AMapLocationRegion  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<CLLocationCoordinate2D> get_coordinates() async {
    final result = await _channel.invokeMethod("AMapLocationPolygonRegion::get_coordinates", {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }
  
  Future<int> get_count() async {
    final result = await _channel.invokeMethod("AMapLocationPolygonRegion::get_count", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
  Future<AMapLocationPolygonRegion> initWithCoordinates(List<CLLocationCoordinate2D> coordinates, int count, String identifier) async {
    // 日志打印
    print('fluttify-dart: AMapLocationPolygonRegion@$refId::initWithCoordinates([\'count\':$count, \'identifier\':$identifier])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapLocationPolygonRegion::initWithCoordinatesCountidentifier', {"coordinates": coordinates.map((it) => it.refId).toList(), "count": count, "identifier": identifier, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return AMapLocationPolygonRegion()..refId = result;
    }
  }
  
}