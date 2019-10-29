import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';

/// 定位结果 model
class Location {
  Location.android(this._androidModel);

  Location.ios(this._iosLocation, this._iosRegeocode);

  com_amap_api_location_AMapLocation _androidModel;
  CLLocation _iosLocation;
  AMapLocationReGeocode _iosRegeocode;

  /// 地址全称
  Future<String> get address {
    return platform(
      android: (pool) => _androidModel.getAddress(),
      ios: (pool) => _iosRegeocode.get_formattedAddress(),
    );
  }

  /// 经纬度
  Future<LatLng> get latLng {
    return platform(
      android: (pool) async => LatLng(
        await _androidModel.getLatitude(),
        await _androidModel.getLongitude(),
      ),
      ios: (pool) async {
        final coordinate = await _iosLocation.coordinate;
        return LatLng(await coordinate.latitude, await coordinate.longitude);
      },
    );
  }

  /// 纬度
  @Deprecated('使用[latLng]代替')
  Future<double> get latitude {
    return platform(
      android: (pool) => _androidModel.getLatitude(),
      ios: (pool) async {
        final coordinate = await _iosLocation.coordinate;
        return coordinate.latitude;
      },
    );
  }

  /// 经度
  @Deprecated('使用[latLng]代替')
  Future<double> get longitude {
    return platform(
      android: (pool) => _androidModel.getLongitude(),
      ios: (pool) async {
        final coordinate = await _iosLocation.coordinate;
        return coordinate.longitude;
      },
    );
  }

  /// 海拔
  Future<double> get altitude {
    return platform(
      android: (pool) => _androidModel.getAltitude(),
      ios: (pool) => _iosLocation.altitude,
    );
  }

  /// 国家
  Future<String> get country {
    return platform(
      android: (pool) => _androidModel.getCountry(),
      ios: (pool) => _iosRegeocode.get_country(),
    );
  }

  /// 省份
  Future<String> get province {
    return platform(
      android: (pool) => _androidModel.getProvince(),
      ios: (pool) => _iosRegeocode.get_province(),
    );
  }

  /// 城市
  Future<String> get city {
    return platform(
      android: (pool) => _androidModel.getCity(),
      ios: (pool) => _iosRegeocode.get_city(),
    );
  }

  /// 城市编号
  Future<String> get cityCode {
    return platform(
      android: (pool) => _androidModel.getCityCode(),
      ios: (pool) => _iosRegeocode.get_citycode(),
    );
  }

  /// 邮编
  Future<String> get adCode {
    return platform(
      android: (pool) => _androidModel.getAdCode(),
      ios: (pool) => _iosRegeocode.get_adcode(),
    );
  }

  /// 区域
  Future<String> get district {
    return platform(
      android: (pool) => _androidModel.getDistrict(),
      ios: (pool) => _iosRegeocode.get_district(),
    );
  }

  /// poi名称
  Future<String> get poiName {
    return platform(
      android: (pool) => _androidModel.getPoiName(),
      ios: (pool) => _iosRegeocode.get_POIName(),
    );
  }

  /// 街道
  Future<String> get street {
    return platform(
      android: (pool) => _androidModel.getStreet(),
      ios: (pool) => _iosRegeocode.get_street(),
    );
  }

  /// 街道号
  Future<String> get streetNumber {
    return platform(
      android: (pool) => _androidModel.getStreetNum(),
      ios: (pool) => _iosRegeocode.get_number(),
    );
  }

  /// aoi名称
  Future<String> get aoiName {
    return platform(
      android: (pool) => _androidModel.getAoiName(),
      ios: (pool) => _iosRegeocode.get_AOIName(),
    );
  }
}
