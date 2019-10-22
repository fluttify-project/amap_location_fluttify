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

  Future<String> get country {
    return platform(
      android: (pool) => _androidModel.getCountry(),
      ios: (pool) => _iosRegeocode.get_country(),
    );
  }

  Future<String> get province {
    return platform(
      android: (pool) => _androidModel.getProvince(),
      ios: (pool) => _iosRegeocode.get_province(),
    );
  }

  Future<String> get city {
    return platform(
      android: (pool) => _androidModel.getCity(),
      ios: (pool) => _iosRegeocode.get_city(),
    );
  }

  Future<String> get cityCode {
    return platform(
      android: (pool) => _androidModel.getCityCode(),
      ios: (pool) => _iosRegeocode.get_citycode(),
    );
  }

  Future<String> get adCode {
    return platform(
      android: (pool) => _androidModel.getAdCode(),
      ios: (pool) => _iosRegeocode.get_adcode(),
    );
  }

  Future<String> get district {
    return platform(
      android: (pool) => _androidModel.getDistrict(),
      ios: (pool) => _iosRegeocode.get_district(),
    );
  }

  Future<String> get poiName {
    return platform(
      android: (pool) => _androidModel.getPoiName(),
      ios: (pool) => _iosRegeocode.get_POIName(),
    );
  }

  Future<String> get street {
    return platform(
      android: (pool) => _androidModel.getStreet(),
      ios: (pool) => _iosRegeocode.get_street(),
    );
  }

  Future<String> get streetNumber {
    return platform(
      android: (pool) => _androidModel.getStreetNum(),
      ios: (pool) => _iosRegeocode.get_number(),
    );
  }

  Future<String> get aoiName {
    return platform(
      android: (pool) => _androidModel.getAoiName(),
      ios: (pool) => _iosRegeocode.get_AOIName(),
    );
  }
}
