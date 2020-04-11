// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'dart:io';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';

import 'enums.dart';
import 'models.dart';

typedef void _OnAndroidLocationChanged(
  com_amap_api_location_AMapLocation location,
);
typedef void _OnIOSLocationChanged(
  CLLocation location,
  AMapLocationReGeocode reGeocode,
);
typedef void _OnRequireAlwaysAuth(CLLocationManager manager);

/// 释放原生对象Mixin
mixin AmapLocationDisposeMixin<T extends StatefulWidget> on State<T> {
  @override
  void dispose() {
    AmapLocation.dispose();
    super.dispose();
  }
}

/// 高德定位 主类
class AmapLocation {
  AmapLocation._();

  static com_amap_api_location_AMapLocationClient _androidClient;
  static AMapLocationManager _iosClient;

  static StreamController<Location> _locationController;

  static _IOSLocationDelegate _iosLocationDelegate;
  static _AndroidLocationDelegate _androidLocationDelegate;

  /// 单次获取定位信息
  ///
  /// 选择定位模式[mode], 设置定位同时是否需要返回地址描述[needAddress], 设置定位请求超时时间，默认为30秒[timeout].
  static Future<Location> fetchLocation({
    LocationAccuracy mode = LocationAccuracy.Low,
    bool needAddress,
    Duration timeout,
  }) async {
    final completer = Completer<Location>();
    return platform(
      android: (pool) async {
        // 获取上下文, 这里获取的是Application
        final context = await android_app_Application.get();

        // 创建定位客户端
        _androidClient ??= await com_amap_api_location_AMapLocationClient
            .create__android_content_Context(context);

        if (_androidLocationDelegate == null) {
          _androidLocationDelegate = _AndroidLocationDelegate();
          // 设置回调
          await _androidClient.setLocationListener(_androidLocationDelegate);
        }

        _androidLocationDelegate._onLocationChanged = (location) async {
          if (!completer.isCompleted) {
            completer.complete(Location(
              address: await location.getAddress(),
              latLng: LatLng(
                await location.getLatitude(),
                await location.getLongitude(),
              ),
              altitude: await location.getAltitude(),
              bearing: await location.getBearing(),
              country: await location.getCountry(),
              province: await location.getProvince(),
              city: await location.getCity(),
              cityCode: await location.getCityCode(),
              adCode: await location.getAdCode(),
              district: await location.getDistrict(),
              poiName: await location.getPoiName(),
              street: await location.getStreet(),
              streetNumber: await location.getStreetNum(),
              aoiName: await location.getAoiName(),
              accuracy: await location.getAccuracy(),
              speed: await location.speed,
            ));
          }
        };

        // 创建选项
        final options =
            await com_amap_api_location_AMapLocationClientOption.create__();
        // 设置单次定位
        await options.setOnceLocation(true);
        // 设置定位模式
        if (mode != null)
          switch (mode) {
            // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
            case LocationAccuracy.High:
              await options.setLocationMode(
                  com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                      .Hight_Accuracy);
              break;
            // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
            case LocationAccuracy.Low:
              await options.setLocationMode(
                  com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                      .Battery_Saving);
              break;
            case LocationAccuracy.DeviceSensor:
              await options.setLocationMode(
                  com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                      .Device_Sensors);
              break;
          }
        // 是否返回地址描述
        if (needAddress != null) await options.setNeedAddress(needAddress);
        // 设置定位请求超时时间，默认为30秒。
        if (timeout != null) await options.setHttpTimeOut(timeout.inSeconds);

        await options.setSensorEnable(true);

        // 设置选项
        await _androidClient.setLocationOption(options);

        // 开始定位
        await _androidClient.startLocation();

        return completer.future;
      },
      ios: (pool) async {
        _iosClient ??= await AMapLocationManager.create__();

        // 设置定位模式
        if (mode != null) {
          switch (mode) {
            // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
            case LocationAccuracy.High:
              await _iosClient.set_desiredAccuracy(10);
              break;
            // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
            case LocationAccuracy.DeviceSensor:
            case LocationAccuracy.Low:
              await _iosClient.set_desiredAccuracy(100);
              break;
          }
        }
        // 设置定位请求超时时间，默认为30秒。
        if (timeout != null) {
          await _iosClient.set_locationTimeout(timeout.inSeconds);
        }

        await _iosClient.requestLocationWithReGeocode_completionBlock(
          needAddress ?? true,
          (location, regeocode, error) async {
            if (!completer.isCompleted) {
              completer.complete(Location(
                address: await regeocode.get_formattedAddress(),
                latLng: LatLng(
                  await location.coordinate.then((it) => it.latitude),
                  await location.coordinate.then((it) => it.longitude),
                ),
                altitude: await location.altitude,
                bearing: await location.course,
                country: await regeocode.get_country(),
                province: await regeocode.get_province(),
                city: await regeocode.get_city(),
                cityCode: await regeocode.get_citycode(),
                adCode: await regeocode.get_adcode(),
                district: await regeocode.get_district(),
                poiName: await regeocode.get_POIName(),
                street: await regeocode.get_street(),
                streetNumber: await regeocode.get_number(),
                aoiName: await regeocode.get_AOIName(),
                accuracy: await location.horizontalAccuracy,
                speed: await location.speed,
              ));
            }
          },
        );
        return completer.future;
      },
    );
  }

  /// 连续获取定位信息
  ///
  /// 选择定位模式[mode], 设置定位同时是否需要返回地址描述[needAddress], 设置定位请求超时时间，默认为30秒[timeout]
  /// 设置是否开启定位缓存机制[cacheEnable].
  static Stream<Location> listenLocation({
    LocationAccuracy mode = LocationAccuracy.Low,
    bool needAddress,
    Duration timeout,
  }) async* {
    _locationController ??= StreamController<Location>();

    if (Platform.isAndroid) {
      // 获取上下文, 这里获取的是Application
      final context = await android_app_Application.get();

      // 创建定位客户端
      _androidClient ??= await com_amap_api_location_AMapLocationClient
          .create__android_content_Context(context);

      // 设置回调
      if (_androidLocationDelegate == null) {
        _androidLocationDelegate = _AndroidLocationDelegate();
        await _androidClient.setLocationListener(_androidLocationDelegate);
      }
      _androidLocationDelegate._onLocationChanged = (location) async {
        _locationController.add(Location(
          address: await location.getAddress(),
          latLng: LatLng(
            await location.getLatitude(),
            await location.getLongitude(),
          ),
          altitude: await location.getAltitude(),
          bearing: await location.getBearing(),
          country: await location.getCountry(),
          province: await location.getProvince(),
          city: await location.getCity(),
          cityCode: await location.getCityCode(),
          adCode: await location.getAdCode(),
          district: await location.getDistrict(),
          poiName: await location.getPoiName(),
          street: await location.getStreet(),
          streetNumber: await location.getStreetNum(),
          aoiName: await location.getAoiName(),
          accuracy: await location.getAccuracy(),
          speed: await location.getSpeed(),
        ));
      };

      // 创建选项
      final options =
          await com_amap_api_location_AMapLocationClientOption.create__();
      // 设置连续定位
      await options.setOnceLocation(false);
      // 设置定位模式
      if (mode != null)
        switch (mode) {
          // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
          case LocationAccuracy.High:
            await options.setLocationMode(
                com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                    .Hight_Accuracy);
            break;
          // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
          case LocationAccuracy.Low:
            await options.setLocationMode(
                com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                    .Battery_Saving);
            break;
          case LocationAccuracy.DeviceSensor:
            await options.setLocationMode(
                com_amap_api_location_AMapLocationClientOption_AMapLocationMode
                    .Device_Sensors);
            break;
        }
      // 是否返回地址描述
      if (needAddress != null) await options.setNeedAddress(needAddress);
      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) await options.setHttpTimeOut(timeout.inSeconds);

      await options.setSensorEnable(true);

      // 设置选项
      await _androidClient.setLocationOption(options);

      // 开始定位
      await _androidClient.startLocation();

      yield* _locationController.stream;
    } else if (Platform.isIOS) {
      _iosClient ??= await AMapLocationManager.create__();

      // 设置定位模式
      if (mode != null)
        switch (mode) {
          // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
          case LocationAccuracy.High:
            await _iosClient.set_desiredAccuracy(10);
            break;
          // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
          case LocationAccuracy.Low:
          case LocationAccuracy.DeviceSensor:
            await _iosClient.set_desiredAccuracy(100);
            break;
        }
      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) {
        await _iosClient.set_locationTimeout(timeout.inSeconds);
      }

      // 设置回调
      if (_iosLocationDelegate == null) {
        _iosLocationDelegate = _IOSLocationDelegate();
        await _iosClient.set_delegate(_iosLocationDelegate);
      }
      _iosLocationDelegate._onLocationChanged = (location, regeocode) async {
        _locationController.add(Location(
          address: await regeocode.get_formattedAddress(),
          latLng: LatLng(
            await location.coordinate.then((it) => it.latitude),
            await location.coordinate.then((it) => it.longitude),
          ),
          altitude: await location.altitude,
          bearing: await location.course,
          country: await regeocode.get_country(),
          province: await regeocode.get_province(),
          city: await regeocode.get_city(),
          cityCode: await regeocode.get_citycode(),
          adCode: await regeocode.get_adcode(),
          district: await regeocode.get_district(),
          poiName: await regeocode.get_POIName(),
          street: await regeocode.get_street(),
          streetNumber: await regeocode.get_number(),
          aoiName: await regeocode.get_AOIName(),
          accuracy: await location.horizontalAccuracy,
          speed: await location.speed,
        ));
      };

      await _iosClient.set_locatingWithReGeocode(true);
      await _iosClient.startUpdatingLocation();

      yield* _locationController.stream;
    }
  }

  /// 停止定位
  static Future<void> stopLocation() {
    return platform(
      android: (pool) async {
        _locationController?.close();
        _locationController = null;

        _androidLocationDelegate = null;

        await _androidClient?.stopLocation();
      },
      ios: (pool) async {
        _locationController?.close();
        _locationController = null;

        _iosLocationDelegate = null;

        await _iosClient?.stopUpdatingLocation();
      },
    );
  }

  /// 请求后台定位 *仅iOS
  static Future<void> requireAlwaysAuth() {
    return platform(
      android: (pool) async {},
      ios: (pool) async {
        final onRequireAuth = (manager) async {
          await manager?.requestAlwaysAuthorization();
        };
        await _iosClient.set_delegate(
          _iosLocationDelegate.._onRequireAlwaysAuth = onRequireAuth,
        );
      },
    );
  }

  /// 释放对象, 如果[AmapLocationDisposeMixin]不能满足需求时再使用这个方法
  static Future<void> dispose() async {
    _locationController?.close();
    _locationController = null;

    _androidLocationDelegate = null;
    _iosLocationDelegate = null;

    final isCurrentPlugin = (it) => it.tag == 'amap_location_fluttify';
    await kNativeObjectPool.where(isCurrentPlugin).release_batch();
    kNativeObjectPool.removeWhere(isCurrentPlugin);

    if (_androidClient != null) {
      await _androidClient.onDestroy();
      await _androidClient.release__();
    }
    if (_iosClient != null) await _iosClient.release__();

    _androidClient = null;
    _iosClient = null;
  }
}

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
