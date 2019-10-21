import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';

class Location {
  Location.android(this._androidModel);

  Location.ios(this._iosLocation, this._iosRegeocode);

  com_amap_api_location_AMapLocation _androidModel;
  CLLocation _iosLocation;
  AMapLocationReGeocode _iosRegeocode;

  Future<String> get address {
    return platform(
      android: (pool) => _androidModel.getAddress(),
      ios: (pool) => _iosRegeocode.get_formattedAddress(),
    );
  }
}
