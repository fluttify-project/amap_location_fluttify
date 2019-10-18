import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class Ref_iOS extends Ref {
  Future<bool> isKindOfAMapGeoFenceManager() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapGeoFenceManager', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationRegion() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationRegion', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapGeoFenceRegion() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapGeoFenceRegion', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationManager() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationManager', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationReGeocode() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationReGeocode', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationPoint() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationPoint', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationPOIItem() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationPOIItem', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapLocationDistrictItem() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapLocationDistrictItem', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapURLSearch() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapURLSearch', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapNaviConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapNaviConfig', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapRouteConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapRouteConfig', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapPOIConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapPOIConfig', {'refId': refId});
    return result;
  }
  
  Future<bool> isKindOfAMapServices() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::isKindOfAMapServices', {'refId': refId});
    return result;
  }
  

  Future<AMapGeoFenceManager> asAMapGeoFenceManager() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapGeoFenceManager', {'refId': refId});
    return AMapGeoFenceManager()..refId = result;
  }
  
  Future<AMapLocationRegion> asAMapLocationRegion() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationRegion', {'refId': refId});
    return AMapLocationRegion()..refId = result;
  }
  
  Future<AMapGeoFenceRegion> asAMapGeoFenceRegion() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapGeoFenceRegion', {'refId': refId});
    return AMapGeoFenceRegion()..refId = result;
  }
  
  Future<AMapLocationManager> asAMapLocationManager() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationManager', {'refId': refId});
    return AMapLocationManager()..refId = result;
  }
  
  Future<AMapLocationReGeocode> asAMapLocationReGeocode() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationReGeocode', {'refId': refId});
    return AMapLocationReGeocode()..refId = result;
  }
  
  Future<AMapLocationPoint> asAMapLocationPoint() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationPoint', {'refId': refId});
    return AMapLocationPoint()..refId = result;
  }
  
  Future<AMapLocationPOIItem> asAMapLocationPOIItem() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationPOIItem', {'refId': refId});
    return AMapLocationPOIItem()..refId = result;
  }
  
  Future<AMapLocationDistrictItem> asAMapLocationDistrictItem() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapLocationDistrictItem', {'refId': refId});
    return AMapLocationDistrictItem()..refId = result;
  }
  
  Future<AMapURLSearch> asAMapURLSearch() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapURLSearch', {'refId': refId});
    return AMapURLSearch()..refId = result;
  }
  
  Future<AMapNaviConfig> asAMapNaviConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapNaviConfig', {'refId': refId});
    return AMapNaviConfig()..refId = result;
  }
  
  Future<AMapRouteConfig> asAMapRouteConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapRouteConfig', {'refId': refId});
    return AMapRouteConfig()..refId = result;
  }
  
  Future<AMapPOIConfig> asAMapPOIConfig() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapPOIConfig', {'refId': refId});
    return AMapPOIConfig()..refId = result;
  }
  
  Future<AMapServices> asAMapServices() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('RefClass::asAMapServices', {'refId': refId});
    return AMapServices()..refId = result;
  }
  
}