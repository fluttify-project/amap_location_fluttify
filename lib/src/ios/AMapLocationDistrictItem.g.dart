import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationDistrictItem extends NSObject with NSCoding, NSCopying {
  // 生成getters
  Future<String> get_cityCode() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationDistrictItem::get_cityCode", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_cityCode(String cityCode) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationDistrictItem::set_cityCode', {'refId': refId, "cityCode": cityCode});
  
  
  }
  

  // 生成方法们
  
}