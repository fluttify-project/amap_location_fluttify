// ignore_for_file: non_constant_identifier_names
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/services.dart';

import 'enums.dart';

extension AMapGeoFenceManagerX on AMapGeoFenceManager {
  // 由于ios端的枚举实际上是由int构成的, 所以枚举值拿来`或`, 但是dart这边枚举就是枚举, 或了之后就只能是int了
  // 这里需要加一个传递int值的相同方法
  Future<void> set_activeActionX(int activeAction) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod(
      'AMapGeoFenceManager::set_activeAction',
      {'refId': refId, "activeAction": activeAction},
    );
  }
}

extension GeoFenceStatusX on GeoFenceStatus {
  static GeoFenceStatus fromAndroid(int androidModel) {
    return GeoFenceStatus.values[androidModel];
  }

  static GeoFenceStatus fromIOS(AMapGeoFenceRegionStatus iosModel) {
    switch (iosModel) {
      case AMapGeoFenceRegionStatus.AMapGeoFenceRegionStatusUnknown:
        return GeoFenceStatus.Unknown;
      case AMapGeoFenceRegionStatus.AMapGeoFenceRegionStatusInside:
        return GeoFenceStatus.In;
      case AMapGeoFenceRegionStatus.AMapGeoFenceRegionStatusOutside:
        return GeoFenceStatus.Out;
      case AMapGeoFenceRegionStatus.AMapGeoFenceRegionStatusStayed:
        return GeoFenceStatus.Stayed;
      default:
        return GeoFenceStatus.Unknown;
    }
  }
}
