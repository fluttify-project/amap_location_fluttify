import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
mixin AMapGeoFenceManagerDelegate on NSObject {
  

  

  @mustCallSuper
  Future<void> amapGeoFenceManagerDoRequireLocationAuth(AMapGeoFenceManager manager, CLLocationManager locationManager) {
    kCallbackPool[manager.refId] = manager;
    kCallbackPool[locationManager.refId] = locationManager;
    debugPrint('amapGeoFenceManagerDoRequireLocationAuth::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror(AMapGeoFenceManager manager, List<AMapGeoFenceRegion> regions, String customID, NSError error) {
    kCallbackPool[manager.refId] = manager;
    kCallbackPool.addAll(Map.fromIterable(regions, key: (it) => it.refId, value: (it) => it));
    kCallbackPool[error.refId] = error;
    debugPrint('amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror::kCallbackPool: $kCallbackPool');
  }
  
  @mustCallSuper
  Future<void> amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror(AMapGeoFenceManager manager, AMapGeoFenceRegion region, String customID, NSError error) {
    kCallbackPool[manager.refId] = manager;
    kCallbackPool[region.refId] = region;
    kCallbackPool[error.refId] = error;
    debugPrint('amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror::kCallbackPool: $kCallbackPool');
  }
  
}