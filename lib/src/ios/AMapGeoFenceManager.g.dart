import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceManager extends NSObject  {
  // 生成getters
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceManager::get_pausesLocationUpdatesAutomatically", {'refId': refId});
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceManager::get_allowsBackgroundLocationUpdates", {'refId': refId});
    return result;
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceManager::get_detectRiskOfFakeLocation", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::set_detectRiskOfFakeLocation', {'refId': refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  

  // 生成方法们
  Future<void> addCircleRegionForMonitoringWithCenterRadiuscustomID(CLLocationCoordinate2D center, double radius, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addCircleRegionForMonitoringWithCenter([\'radius\':$radius, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::addCircleRegionForMonitoringWithCenterRadiuscustomID', {"center": center.refId, "radius": radius, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addPolygonRegionForMonitoringWithCoordinatesCountcustomID(List<CLLocationCoordinate2D> coordinates, int count, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addPolygonRegionForMonitoringWithCoordinates([\'count\':$count, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::addPolygonRegionForMonitoringWithCoordinatesCountcustomID', {"coordinates": coordinates.map((it) => it.refId).toList(), "count": count, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addKeywordPOIRegionForMonitoringWithKeywordPOITypecitysizecustomID(String keyword, String type, String city, int size, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addKeywordPOIRegionForMonitoringWithKeyword([\'keyword\':$keyword, \'type\':$type, \'city\':$city, \'size\':$size, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::addKeywordPOIRegionForMonitoringWithKeywordPOITypecitysizecustomID', {"keyword": keyword, "type": type, "city": city, "size": size, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addAroundPOIRegionForMonitoringWithLocationPointAroundRadiuskeywordPOITypesizecustomID(CLLocationCoordinate2D locationPoint, int aroundRadius, String keyword, String type, int size, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addAroundPOIRegionForMonitoringWithLocationPoint([\'aroundRadius\':$aroundRadius, \'keyword\':$keyword, \'type\':$type, \'size\':$size, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::addAroundPOIRegionForMonitoringWithLocationPointAroundRadiuskeywordPOITypesizecustomID', {"locationPoint": locationPoint.refId, "aroundRadius": aroundRadius, "keyword": keyword, "type": type, "size": size, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addDistrictRegionForMonitoringWithDistrictNameCustomID(String districtName, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addDistrictRegionForMonitoringWithDistrictName([\'districtName\':$districtName, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::addDistrictRegionForMonitoringWithDistrictNameCustomID', {"districtName": districtName, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<List> geoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::geoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::geoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<List> monitoringGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::monitoringGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::monitoringGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<List> pausedGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::pausedGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::pausedGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<List> pauseGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::pauseGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::pauseGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<List> startGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::startGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::startGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return (result as List).cast<int>().map((it) => NSObject()..refId = it).toList();
    }
  }
  
  Future<void> removeGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::removeGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::removeGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeAllGeoFenceRegions() async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::removeAllGeoFenceRegions([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::removeAllGeoFenceRegions', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}