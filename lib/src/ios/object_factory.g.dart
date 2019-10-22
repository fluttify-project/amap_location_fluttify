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
    final object = AMapGeoFenceManager()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationRegion> createAMapLocationRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationRegion');
    final object = AMapLocationRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationCircleRegion> createAMapLocationCircleRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationCircleRegion');
    final object = AMapLocationCircleRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationPolygonRegion> createAMapLocationPolygonRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPolygonRegion');
    final object = AMapLocationPolygonRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapGeoFenceRegion> createAMapGeoFenceRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceRegion');
    final object = AMapGeoFenceRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapGeoFenceCircleRegion> createAMapGeoFenceCircleRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceCircleRegion');
    final object = AMapGeoFenceCircleRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapGeoFencePolygonRegion> createAMapGeoFencePolygonRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFencePolygonRegion');
    final object = AMapGeoFencePolygonRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapGeoFencePOIRegion> createAMapGeoFencePOIRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFencePOIRegion');
    final object = AMapGeoFencePOIRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapGeoFenceDistrictRegion> createAMapGeoFenceDistrictRegion() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapGeoFenceDistrictRegion');
    final object = AMapGeoFenceDistrictRegion()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationManager> createAMapLocationManager() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationManager');
    final object = AMapLocationManager()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationReGeocode> createAMapLocationReGeocode() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationReGeocode');
    final object = AMapLocationReGeocode()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationPoint> createAMapLocationPoint() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPoint');
    final object = AMapLocationPoint()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationPOIItem> createAMapLocationPOIItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationPOIItem');
    final object = AMapLocationPOIItem()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<AMapLocationDistrictItem> createAMapLocationDistrictItem() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createAMapLocationDistrictItem');
    final object = AMapLocationDistrictItem()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
}

class NSObject extends Ref_iOS {}

// 结构体
class CLLocationCoordinate2D extends Ref_iOS {
  Future<double> get latitude {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocationCoordinate2D::get_latitude', {'refId': refId});
  }

  Future<double> get longitude {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocationCoordinate2D::get_longitude', {'refId': refId});
  }
}

class CLHeading extends Ref_iOS {}

class CGRect extends Ref_iOS {}

class CGPoint extends Ref_iOS {}

class CGSize extends Ref_iOS {}

class UIEdgeInsets extends Ref_iOS {}

// 类
class CLLocationManager extends NSObject {}

class CLLocation extends NSObject {
  Future<CLLocationCoordinate2D> get coordinate async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_coordinate', {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }

  Future<double> get altitude {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_altitude', {'refId': refId});
  }

  Future<double> get horizontalAccuracy {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_horizontalAccuracy', {'refId': refId});
  }

  Future<double> get verticalAccuracy {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_verticalAccuracy', {'refId': refId});
  }

  Future<double> get course {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_course', {'refId': refId});
  }

  Future<double> get speed {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_speed', {'refId': refId});
  }

  Future<CLFloor> get floor async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLLocation::get_floor', {'refId': refId});
    return CLFloor()..refId = result;
  }
}

class CLFloor extends NSObject {
  Future<String> get level {
    return MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('CLFloor::get_level', {'refId': refId});
  }
}

class NSError extends NSObject {}

mixin NSCoding on NSObject {}

mixin NSCopying on NSObject {}

class UIView extends NSObject {}

class UIControl extends NSObject {}

class UIImage extends NSObject {}

// 枚举
enum CLAuthorizationStatus {
  kCLAuthorizationStatusNotDetermined,
  kCLAuthorizationStatusRestricted,
  kCLAuthorizationStatusDenied,
  kCLAuthorizationStatusAuthorizedAlways,
  kCLAuthorizationStatusAuthorizedWhenInUse,
  kCLAuthorizationStatusAuthorized,
}
