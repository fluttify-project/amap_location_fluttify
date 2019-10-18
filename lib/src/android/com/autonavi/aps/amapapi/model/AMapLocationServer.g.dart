import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_aps_amapapi_model_AMapLocationServer extends com_amap_api_location_AMapLocation  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<String> toStr() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.aps.amapapi.model.AMapLocationServer@$refId::toStr([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.autonavi.aps.amapapi.model.AMapLocationServer::toStr', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}