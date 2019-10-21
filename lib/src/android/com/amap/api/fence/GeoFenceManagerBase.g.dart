import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin com_amap_api_fence_GeoFenceManagerBase on java_lang_Object {
  

  

  @mustCallSuper
  Future<void> setActivateAction(int var1) {
  
    debugPrint('setActivateAction::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setGeoFenceListener(com_amap_api_fence_GeoFenceListener var1) {
    kNativeObjectPool.add(var1);
    debugPrint('setGeoFenceListener::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addRoundGeoFence(com_amap_api_location_DPoint var1, double var2, String var3) {
    kNativeObjectPool.add(var1);
    debugPrint('addRoundGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addPolygonGeoFence(List<com_amap_api_location_DPoint> var1, String var2) {
    kNativeObjectPool.addAll(var1);
    debugPrint('addPolygonGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addNearbyGeoFence(String var1, String var2, com_amap_api_location_DPoint var3, double var4, int var5, String var6) {
    kNativeObjectPool.add(var3);
    debugPrint('addNearbyGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addKeywordGeoFence(String var1, String var2, String var3, int var4, String var5) {
  
    debugPrint('addKeywordGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> addDistrictGeoFence(String var1, String var2) {
  
    debugPrint('addDistrictGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> removeGeoFence() {
  
    debugPrint('removeGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<List<com_amap_api_fence_GeoFence>> getAllGeoFence() {
  
    debugPrint('getAllGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> setGeoFenceAble(String var1, bool var2) {
  
    debugPrint('setGeoFenceAble::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> pauseGeoFence() {
  
    debugPrint('pauseGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<void> resumeGeoFence() {
  
    debugPrint('resumeGeoFence::kNativeObjectPool: $kNativeObjectPool');
  }
  
  @mustCallSuper
  Future<bool> isPause() {
  
    debugPrint('isPause::kNativeObjectPool: $kNativeObjectPool');
  }
  
}