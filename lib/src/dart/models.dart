import 'package:amap_location_fluttify/src/android/android.export.g.dart';

class Location {
  Location.android(this._androidModel);

  Location.ios();

  com_amap_api_location_AMapLocation _androidModel;

  Future<String> get address {
    return platform(
      android: (pool) async => _androidModel.getAddress(),
    );
  }
}
