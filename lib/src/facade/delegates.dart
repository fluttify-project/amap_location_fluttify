// ignore_for_file: non_constant_identifier_names
part of 'amap_location.dart';

typedef void _OnAndroidLocationChanged(
  com_amap_api_location_AMapLocation location,
);
typedef void _OnIOSLocationChanged(
  CLLocation location,
  AMapLocationReGeocode reGeocode,
);
typedef void _OnRequireAlwaysAuth(CLLocationManager manager);
typedef void _OnGeoFenceStatusChanged(
  AMapGeoFenceRegion region,
  String customID,
  NSError error,
);

class _AndroidLocationDelegate extends java_lang_Object
    with
        com_amap_api_location_AMapLocationListener,
        com_amap_api_fence_GeoFenceListener {
  _OnAndroidLocationChanged _onLocationChanged;

  @override
  Future<void> onLocationChanged(
    com_amap_api_location_AMapLocation var1,
  ) async {
    super.onLocationChanged(var1);
    if (_onLocationChanged != null) {
      _onLocationChanged(var1);
    }
  }

  @override
  Future<void> onGeoFenceCreateFinished(
      List<com_amap_api_fence_GeoFence> var1, int var2, String var3) async {
    super.onGeoFenceCreateFinished(var1, var2, var3);
    debugPrint(
        '围栏创建结果: $var2, ${com_amap_api_fence_GeoFence.ADDGEOFENCE_SUCCESS}');
  }
}

class _IOSLocationDelegate extends NSObject
    with AMapLocationManagerDelegate, AMapGeoFenceManagerDelegate {
  _OnIOSLocationChanged _onLocationChanged;
  _OnRequireAlwaysAuth _onRequireAlwaysAuth;
  _OnGeoFenceStatusChanged _onGeoFenceStatusChanged;

  @override
  Future<void> amapLocationManager_didUpdateLocation_reGeocode(
    AMapLocationManager manager,
    CLLocation location,
    AMapLocationReGeocode reGeocode,
  ) async {
    super.amapLocationManager_didUpdateLocation_reGeocode(
      manager,
      location,
      reGeocode,
    );
    if (_onLocationChanged != null) {
      _onLocationChanged(location, reGeocode);
    }
  }

  @override
  Future<void> amapLocationManager_doRequireLocationAuth(
    AMapLocationManager manager,
    CLLocationManager locationManager,
  ) async {
    super.amapLocationManager_doRequireLocationAuth(manager, locationManager);
    if (_onRequireAlwaysAuth != null) {
      _onRequireAlwaysAuth(locationManager);
    }
  }

  @override
  Future<void>
      amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error(
          AMapGeoFenceManager manager,
          AMapGeoFenceRegion region,
          String customID,
          NSError error) async {
    super.amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error(
        manager, region, customID, error);
    if (_onGeoFenceStatusChanged != null) {
      _onGeoFenceStatusChanged(region, customID, error);
    }
  }
}
