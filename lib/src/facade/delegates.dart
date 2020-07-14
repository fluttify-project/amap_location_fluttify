// ignore_for_file: non_constant_identifier_names
part of 'amap_location.dart';

class _AndroidLocationDelegate extends java_lang_Object
    with com_amap_api_location_AMapLocationListener {
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
}

class _IOSLocationDelegate extends NSObject with AMapLocationManagerDelegate {
  _OnIOSLocationChanged _onLocationChanged;
  _OnRequireAlwaysAuth _onRequireAlwaysAuth;

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
}
