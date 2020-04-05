import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';

/// 定位结果 model
class Location {
  Location({
    @required this.address,
    @required this.latLng,
    @required this.altitude,
    @required this.bearing,
    @required this.country,
    @required this.province,
    @required this.city,
    @required this.cityCode,
    @required this.adCode,
    @required this.district,
    @required this.poiName,
    @required this.street,
    @required this.streetNumber,
    @required this.aoiName,
    @required this.accuracy,
    @required this.speed,
  });

  /// 地址全称
  String address;

  /// 经纬度
  LatLng latLng;

  /// 海拔
  double altitude;

  /// 设备朝向/移动方向
  double bearing;

  /// 国家
  String country;

  /// 省份
  String province;

  /// 城市
  String city;

  /// 城市编号
  String cityCode;

  /// 邮编
  String adCode;

  /// 区域
  String district;

  /// poi名称
  String poiName;

  /// 街道
  String street;

  /// 街道号
  String streetNumber;

  /// aoi名称
  String aoiName;

  /// 精度
  double accuracy;

  /// 速度
  double speed;

  @override
  String toString() {
    return 'Location{\naddress: $address, \nlatLng: $latLng, \naltitude: $altitude, \nbearing: $bearing, \ncountry: $country, \nprovince: $province, \ncity: $city, \ncityCode: $cityCode, \nadCode: $adCode, \ndistrict: $district, \npoiName: $poiName, \nstreet: $street, \nstreetNumber: $streetNumber, \naoiName: $aoiName, \naccuracy: $accuracy\n}';
  }
}
