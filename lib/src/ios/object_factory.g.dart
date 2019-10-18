import 'dart:typed_data';

import 'package:flutter/services.dart';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class ObjectFactory_iOS {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  static Future<CLLocationCoordinate2D> createCLLocationCoordinate2D(double latitude, double longitude) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createCLLocationCoordinate2D', {'latitude': latitude, 'longitude': longitude});
    return CLLocationCoordinate2D()..refId = refId;
  }

  static Future<UIImage> createUIImage(Uint8List bitmapBytes) async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::createUIImage', {'bitmapBytes': bitmapBytes});
    return UIImage()..refId = refId;
  }

  static Future<void> release(Ref_iOS ref) async {
    await _channel.invokeMethod('ObjectFactory::release', {'refId': ref.refId});
  }

  static Future<void> clearHeap() async {
    await _channel.invokeMethod('ObjectFactory::clearHeap');
  }

  static Future<void> pushStack(String name, Ref_iOS ref) async {
    await _channel.invokeMethod('ObjectFactory::pushStack', {'name': name, 'refId': ref.refId});
  }

  static Future<void> pushStackJsonable(String name, dynamic jsonable) async {
    await _channel.invokeMethod('ObjectFactory::pushStackJsonable', {'name': name, 'data': jsonable});
  }

  static Future<void> clearStack() async {
    await _channel.invokeMethod('ObjectFactory::clearStack');
  }

  static Future<AMapGeoFenceManager> createAMapGeoFenceManager() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceManager');
    return AMapGeoFenceManager()..refId = refId;
  }
  
  static Future<AMapLocationRegion> createAMapLocationRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationRegion');
    return AMapLocationRegion()..refId = refId;
  }
  
  static Future<AMapLocationCircleRegion> createAMapLocationCircleRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationCircleRegion');
    return AMapLocationCircleRegion()..refId = refId;
  }
  
  static Future<AMapLocationPolygonRegion> createAMapLocationPolygonRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPolygonRegion');
    return AMapLocationPolygonRegion()..refId = refId;
  }
  
  static Future<AMapGeoFenceRegion> createAMapGeoFenceRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceRegion');
    return AMapGeoFenceRegion()..refId = refId;
  }
  
  static Future<AMapGeoFenceCircleRegion> createAMapGeoFenceCircleRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceCircleRegion');
    return AMapGeoFenceCircleRegion()..refId = refId;
  }
  
  static Future<AMapGeoFencePolygonRegion> createAMapGeoFencePolygonRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFencePolygonRegion');
    return AMapGeoFencePolygonRegion()..refId = refId;
  }
  
  static Future<AMapGeoFencePOIRegion> createAMapGeoFencePOIRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFencePOIRegion');
    return AMapGeoFencePOIRegion()..refId = refId;
  }
  
  static Future<AMapGeoFenceDistrictRegion> createAMapGeoFenceDistrictRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceDistrictRegion');
    return AMapGeoFenceDistrictRegion()..refId = refId;
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

class UIEdgeInsets extends Ref_iOS {}

// 类
class CLLocationManager extends NSObject {}

class NSError extends NSObject {}

mixin NSCoding on NSObject {}

mixin NSCopying on NSObject {}

class UIView extends NSObject {}

class UIControl extends NSObject {}

class UIImage extends NSObject {}
