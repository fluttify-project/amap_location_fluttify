import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.dart';
import 'package:amap_location_fluttify/src/android/android.export.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceManager extends NSObject  {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  // 生成getters
  Future<AMapGeoFenceActiveAction> get_activeAction() async {
    final result = await _channel.invokeMethod("AMapGeoFenceManager::get_activeAction", {'refId': refId});
    return AMapGeoFenceActiveAction.values[result];
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final result = await _channel.invokeMethod("AMapGeoFenceManager::get_pausesLocationUpdatesAutomatically", {'refId': refId});
    return result;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final result = await _channel.invokeMethod("AMapGeoFenceManager::get_allowsBackgroundLocationUpdates", {'refId': refId});
    return result;
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final result = await _channel.invokeMethod("AMapGeoFenceManager::get_detectRiskOfFakeLocation", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_delegate(AMapGeoFenceManagerDelegate delegate) async {
    await _channel.invokeMethod('AMapGeoFenceManager::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('AMapGeoFenceManagerDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDoRequireLocationAuth':
            // 日志打印
            print('fluttify-dart-callback: amapGeoFenceManagerDoRequireLocationAuth([])');
        
              // 调用回调方法
            delegate?.amapGeoFenceManagerDoRequireLocationAuth(AMapGeoFenceManager()..refId = (args['manager']), CLLocationManager()..refId = (args['locationManager']));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_activeAction(AMapGeoFenceActiveAction activeAction) async {
    await _channel.invokeMethod('AMapGeoFenceManager::set_activeAction', {'refId': refId, "activeAction": activeAction.index});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await _channel.invokeMethod('AMapGeoFenceManager::set_pausesLocationUpdatesAutomatically', {'refId': refId, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await _channel.invokeMethod('AMapGeoFenceManager::set_allowsBackgroundLocationUpdates', {'refId': refId, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await _channel.invokeMethod('AMapGeoFenceManager::set_detectRiskOfFakeLocation', {'refId': refId, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  

  // 生成方法们
  Future<void> addPolygonRegionForMonitoringWithCoordinates(List<CLLocationCoordinate2D> coordinates, int count, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addPolygonRegionForMonitoringWithCoordinates([\'count\':$count, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::addPolygonRegionForMonitoringWithCoordinatesCountcustomID', {"coordinates": coordinates.map((it) => it.refId).toList(), "count": count, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addKeywordPOIRegionForMonitoringWithKeyword(String keyword, String type, String city, int size, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addKeywordPOIRegionForMonitoringWithKeyword([\'keyword\':$keyword, \'type\':$type, \'city\':$city, \'size\':$size, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::addKeywordPOIRegionForMonitoringWithKeywordPOITypecitysizecustomID', {"keyword": keyword, "type": type, "city": city, "size": size, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addAroundPOIRegionForMonitoringWithLocationPoint(CLLocationCoordinate2D locationPoint, int aroundRadius, String keyword, String type, int size, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addAroundPOIRegionForMonitoringWithLocationPoint([\'aroundRadius\':$aroundRadius, \'keyword\':$keyword, \'type\':$type, \'size\':$size, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::addAroundPOIRegionForMonitoringWithLocationPointAroundRadiuskeywordPOITypesizecustomID', {"locationPoint": locationPoint.refId, "aroundRadius": aroundRadius, "keyword": keyword, "type": type, "size": size, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> addDistrictRegionForMonitoringWithDistrictName(String districtName, String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::addDistrictRegionForMonitoringWithDistrictName([\'districtName\':$districtName, \'customID\':$customID])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::addDistrictRegionForMonitoringWithDistrictNameCustomID', {"districtName": districtName, "customID": customID, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<AMapGeoFenceRegionActiveStatus> statusWithGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::statusWithGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::statusWithGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return AMapGeoFenceRegionActiveStatus.values[result];
    }
  }
  
  Future<bool> pauseTheGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::pauseTheGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::pauseTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<bool> startTheGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::startTheGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::startTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeTheGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::removeTheGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::removeTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
  Future<void> removeGeoFenceRegionsWithCustomID(String customID) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::removeGeoFenceRegionsWithCustomID([\'customID\':$customID])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('AMapGeoFenceManager::removeGeoFenceRegionsWithCustomID', {"customID": customID, "refId": refId});
  
  
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
    final result = await _channel.invokeMethod('AMapGeoFenceManager::removeAllGeoFenceRegions', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }
  
}