import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapGeoFenceManager extends NSObject  {
  // 生成getters
  Future<AMapGeoFenceActiveAction> get_activeAction() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapGeoFenceManager::get_activeAction", {'refId': refId});
    return AMapGeoFenceActiveAction.values[result];
  }
  
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
  Future<void> set_delegate(AMapGeoFenceManagerDelegate delegate) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
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
          case 'Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror':
            // 日志打印
            print('fluttify-dart-callback: amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror([\'customID\':$args[customID]])');
        
              // 调用回调方法
            delegate?.amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror(AMapGeoFenceManager()..refId = (args['manager']), (args['regions'] as List).cast<int>().map((it) => AMapGeoFenceRegion()..refId = it).toList(), args['customID'], NSError()..refId = (args['error']));
            break;
          case 'Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror':
            // 日志打印
            print('fluttify-dart-callback: amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror([\'customID\':$args[customID]])');
        
              // 调用回调方法
            delegate?.amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror(AMapGeoFenceManager()..refId = (args['manager']), AMapGeoFenceRegion()..refId = (args['region']), args['customID'], NSError()..refId = (args['error']));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_activeAction(AMapGeoFenceActiveAction activeAction) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::set_activeAction', {'refId': refId, "activeAction": activeAction.index});
  
  
  }
  
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
  
  Future<AMapGeoFenceRegionActiveStatus> statusWithGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::statusWithGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::statusWithGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return AMapGeoFenceRegionActiveStatus.values[result];
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
  
  Future<bool> pauseTheGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::pauseTheGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::pauseTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    if (result == null) {
      return null;
    } else {
      return result;
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
  
  Future<bool> startTheGeoFenceRegion(AMapGeoFenceRegion region) async {
    // 日志打印
    print('fluttify-dart: AMapGeoFenceManager@$refId::startTheGeoFenceRegion([])');
  
    // 调用原生方法
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::startTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
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
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapGeoFenceManager::removeTheGeoFenceRegion', {"region": region.refId, "refId": refId});
  
  
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