import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_fence_PoiItem extends java_lang_Object with android_os_Parcelable {
  // 生成getters
  

  // 生成setters
  

  // 生成方法们
  Future<double> getLatitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getLatitude([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getLatitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setLatitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setLatitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setLatitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getLongitude() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getLongitude([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getLongitude', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setLongitude(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setLongitude([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setLongitude', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getPoiId() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getPoiId([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getPoiId', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setPoiId(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setPoiId([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setPoiId', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getPoiType() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getPoiType([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getPoiType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setPoiType(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setPoiType([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setPoiType', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getTypeCode() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getTypeCode([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getTypeCode', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setTypeCode(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setTypeCode([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setTypeCode', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getAddress() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getAddress([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getAddress', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setAddress(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setAddress([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setAddress', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getTel() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getTel([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getTel', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setTel(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setTel([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setTel', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getProvince() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getProvince([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getProvince', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setProvince(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setProvince([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setProvince', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getCity() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getCity([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getCity', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setCity(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setCity([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setCity', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getAdname() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getAdname([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getAdname', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getPoiName() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::getPoiName([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getPoiName', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setPoiName(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setPoiName([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setPoiName', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setAdname(String var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem@$refId::setAdname([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::setAdname', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<com_amap_api_fence_PoiItem> getCreator() async {
    // 日志打印
    print('fluttify-dart: com.amap.api.fence.PoiItem::getCreator([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('com.amap.api.fence.PoiItem::getCreator', );
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_fence_PoiItem()..refId = result);
      return com_amap_api_fence_PoiItem()..refId = result;
    }
  }
  
}