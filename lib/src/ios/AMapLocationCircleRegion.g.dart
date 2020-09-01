// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class AMapLocationCircleRegion extends AMapLocationRegion with NSCopying {
  //region constants
  static const String name__ = 'AMapLocationCircleRegion';

  
  //endregion

  //region creators
  static Future<AMapLocationCircleRegion> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('ObjectFactory::createAMapLocationCircleRegion');
    final object = AMapLocationCircleRegion()..refId = refId..tag__ = 'amap_location_fluttify';
    return object;
  }
  
  static Future<List<AMapLocationCircleRegion>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('ObjectFactory::create_batchAMapLocationCircleRegion', {'length': length});
  
    final List<AMapLocationCircleRegion> typedResult = resultBatch.map((result) => AMapLocationCircleRegion()..refId = result..tag__ = 'amap_location_fluttify').toList();
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<CLLocationCoordinate2D> get_center() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod("AMapLocationCircleRegion::get_center", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = __result__..tag__ = 'amap_location_fluttify');
    return CLLocationCoordinate2D()..refId = __result__..tag__ = 'amap_location_fluttify';
  }
  
  Future<double> get_radius() async {
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod("AMapLocationCircleRegion::get_radius", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<AMapLocationCircleRegion> initWithCenter_radius_identifier(CLLocationCoordinate2D center, double radius, String identifier) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationCircleRegion@$refId::initWithCenter([\'radius\':$radius, \'identifier\':$identifier])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('AMapLocationCircleRegion::initWithCenter_radius_identifier', {"center": center, "radius": radius, "identifier": identifier, "__this__": this});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = AMapLocationCircleRegion()..refId = __result__..tag__ = 'amap_location_fluttify';
      return __return__;
    }
  }
  
  //endregion
}

extension AMapLocationCircleRegion_Batch on List<AMapLocationCircleRegion> {
  //region getters
  Future<List<CLLocationCoordinate2D>> get_center_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod("AMapLocationCircleRegion::get_center_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => CLLocationCoordinate2D()..refId = __result__..tag__ = 'amap_location_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<double>> get_radius_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod("AMapLocationCircleRegion::get_radius_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<double>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<AMapLocationCircleRegion>> initWithCenter_radius_identifier_batch(List<CLLocationCoordinate2D> center, List<double> radius, List<String> identifier) async {
    if (center.length != radius.length || radius.length != identifier.length) {
      return Future.error('all args must have same length!');
    }
  
    // invoke native method
    final resultBatch = await MethodChannel('me.yohom/amap_location_fluttify', StandardMethodCodec(FluttifyMessageCodec())).invokeMethod('AMapLocationCircleRegion::initWithCenter_radius_identifier_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"center": center[__i__].refId, "radius": radius[__i__], "identifier": identifier[__i__], "__this__": this[__i__].refId}]);
  
  
    // convert native result to dart side object
    if (resultBatch == null) {
      return null;
    } else {
      final typedResult = (resultBatch as List).cast<int>().map((__result__) => AMapLocationCircleRegion()..refId = __result__..tag__ = 'amap_location_fluttify').toList();
      return typedResult;
    }
  }
  
  //endregion
}