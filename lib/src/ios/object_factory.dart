import 'package:flutter/services.dart';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class ObjectFactory_iOS {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  static Future<CLLocationCoordinate2D> createCLLocationCoordinate2D(double latitude, double longitude) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createCLLocationCoordinate2D', {'latitude': latitude, 'longitude': longitude});
    return CLLocationCoordinate2D()..refId = refId;
  }

  static Future<void> release(Ref_iOS ref) async {
    await _channel.invokeMethod('ObjectFactory::release', {'refId': ref.refId});
  }

  static Future<void> clearRefMap() async {
    await _channel.invokeMethod('ObjectFactory::clearRefMap');
  }

  static Future<AMapGeoFenceManager> createAMapGeoFenceManager() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceManager');
    return AMapGeoFenceManager()..refId = refId;
  }
  
  static Future<AMapLocationRegion> createAMapLocationRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationRegion');
    return AMapLocationRegion()..refId = refId;
  }
  
  static Future<AMapGeoFenceRegion> createAMapGeoFenceRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceRegion');
    return AMapGeoFenceRegion()..refId = refId;
  }
  
  static Future<AMapLocationManager> createAMapLocationManager() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationManager');
    return AMapLocationManager()..refId = refId;
  }
  
  static Future<AMapLocationReGeocode> createAMapLocationReGeocode() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationReGeocode');
    return AMapLocationReGeocode()..refId = refId;
  }
  
  static Future<AMapLocationPoint> createAMapLocationPoint() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPoint');
    return AMapLocationPoint()..refId = refId;
  }
  
  static Future<AMapLocationPOIItem> createAMapLocationPOIItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPOIItem');
    return AMapLocationPOIItem()..refId = refId;
  }
  
  static Future<AMapLocationDistrictItem> createAMapLocationDistrictItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationDistrictItem');
    return AMapLocationDistrictItem()..refId = refId;
  }
  
  static Future<AMapURLSearch> createAMapURLSearch() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapURLSearch');
    return AMapURLSearch()..refId = refId;
  }
  
  static Future<AMapNaviConfig> createAMapNaviConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapNaviConfig');
    return AMapNaviConfig()..refId = refId;
  }
  
  static Future<AMapRouteConfig> createAMapRouteConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapRouteConfig');
    return AMapRouteConfig()..refId = refId;
  }
  
  static Future<AMapPOIConfig> createAMapPOIConfig() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapPOIConfig');
    return AMapPOIConfig()..refId = refId;
  }
  
  static Future<AMapServices> createAMapServices() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapServices');
    return AMapServices()..refId = refId;
  }
  
}

class NSObject extends Ref_iOS {}

// 结构体
class CLLocationCoordinate2D extends Ref_iOS {}

class CLLocation extends Ref_iOS {}

class CGRect extends Ref_iOS {}

class CGPoint extends Ref_iOS {}

// 类
class CLLocationManager extends Ref_iOS {}

class NSError extends Ref_iOS {}

mixin NSCoding on Ref_iOS {}

mixin NSCopying on Ref_iOS {}

class UIView extends Ref_iOS {}

class UIControl extends UIView {}

class AMapGeoFenceManagerDelegate_Ref = NSObject with AMapGeoFenceManagerDelegate;
class AMapLocationManagerDelegate_Ref = NSObject with AMapLocationManagerDelegate;
