import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_fence_GeoFenceClient extends java_lang_Object  {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<void> setActivateAction(int var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::setActivateAction([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::setActivateAction', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addGeoFence(String var1, String var2, String var3, int var4, String var5) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::addGeoFence([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::addGeoFence', {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeGeoFence() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::removeGeoFence([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::removeGeoFence', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> setGeoFenceAble(String var1, bool var2) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::setGeoFenceAble([\'var1\':$var1, \'var2\':$var2])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::setGeoFenceAble', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> pauseGeoFence() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::pauseGeoFence([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::pauseGeoFence', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> resumeGeoFence() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::resumeGeoFence([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::resumeGeoFence', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> isPause() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::isPause([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::isPause', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}