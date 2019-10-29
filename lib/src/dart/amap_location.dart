import 'dart:async';
import 'dart:io';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';

import 'enums.dart';
import 'models.dart';

typedef void _OnLocationChanged(Location location);

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
  static com_amap_api_location_AMapLocationClient _androidClient;
  static AMapLocationManager _iosClient;

  /// 获取定位信息
  ///
  /// 选择定位模式[mode], 设置定位同时是否需要返回地址描述[needAddress], 设置定位请求超时时间，默认为30秒[timeout]
  /// 设置是否开启定位缓存机制[cacheEnable].
  static void startLocation({
    LocationAccuracy mode = LocationAccuracy.Low,
    bool needAddress,
    int timeout,
    bool once = false,
    @required _OnLocationChanged locationChanged,
  }) async {
    if (Platform.isAndroid) {
      // 获取上下文, 这里获取的是Application
      final context =
          await PlatformFactory_Android.getandroid_app_Application();

      // 创建定位客户端
      _androidClient ??= await AmapLocationFluttifyFactoryAndroid
          .createcom_amap_api_location_AMapLocationClient__android_content_Context(
              context);

      // 设置回调
      await _androidClient
          .setLocationListener(_AndroidLocationDelegate(locationChanged));

      // 创建选项
      final options = await AmapLocationFluttifyFactoryAndroid
          .createcom_amap_api_location_AMapLocationClientOption__();
      // 设置单次定位
      await options.setOnceLocation(once);
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
//          // 仅用设备定位模式：不需要连接网络，只使用GPS进行定位，这种模式下不支持室内环境的定位，
//          // 需要在室外环境下才可以成功定位。注意，自 v2.9.0 版本之后，仅设备定位模式下支持返回地址描述信息。
//          case LocationAccuracy.DeviceSensor:
//            await options.setLocationMode(
//                com_amap_api_location_AMapLocationClientOption_AMapLocationMode
//                    .Device_Sensors);
//            break;
        }
      // 是否返回地址描述
      if (needAddress != null) await options.setNeedAddress(needAddress);
      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) await options.setHttpTimeOut(timeout);

      // 设置选项
      await _androidClient.setLocationOption(options);

      // 开始定位
      await _androidClient.startLocation();
    } else if (Platform.isIOS) {
      _iosClient ??= await AmapLocationFluttifyFactoryIOS.createAMapLocationManager();

      // 设置定位模式
      if (mode != null)
        switch (mode) {
          // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
          case LocationAccuracy.High:
            await _iosClient.set_desiredAccuracy(10);
            break;
          // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
          case LocationAccuracy.Low:
            await _iosClient.set_desiredAccuracy(100);
            break;
        }
      // 设置定位请求超时时间，默认为30秒。
      if (timeout != null) await _iosClient.set_locationTimeout(timeout);

      if (once) {
        await _iosClient.requestLocationWithReGeocodeCompletionBlock(
          needAddress ?? true,
          (location, regeocode, error) {
            locationChanged(Location.ios(location, regeocode));
          },
        );
      } else {
        // 设置回调
        await _iosClient.set_delegate(_IOSLocationDelegate(locationChanged));
        await _iosClient.set_locatingWithReGeocode(true);
        await _iosClient.startUpdatingLocation();
      }
    }
  }

  /// 停止定位
  static Future<void> stopLocation() {
    return platform(
      android: (pool) => _androidClient.stopLocation(),
      ios: (pool) => _iosClient.stopUpdatingLocation(),
    );
  }

  /// 释放对象, 如果[AmapLocationDisposeMixin]不能满足需求时再使用这个方法
  static void dispose() {
    final isCurrentPlugin = (it) => it.tag == 'amap_location_fluttify';
    kNativeObjectPool
      ..where(isCurrentPlugin).forEach(release)
      ..removeWhere(isCurrentPlugin);
    if (_androidClient != null) release(_androidClient);
    if (_iosClient != null) release(_iosClient);
  }
}

class _AndroidLocationDelegate extends java_lang_Object
    with com_amap_api_location_AMapLocationListener {
  _AndroidLocationDelegate(this._onLocationChanged);

  final _OnLocationChanged _onLocationChanged;

  @override
  Future<void> onLocationChanged(
    com_amap_api_location_AMapLocation var1,
  ) async {
    super.onLocationChanged(var1);
    if (_onLocationChanged != null) {
      _onLocationChanged(Location.android(var1));
    }
  }
}

class _IOSLocationDelegate extends NSObject with AMapLocationManagerDelegate {
  _IOSLocationDelegate(this._onLocationChanged);

  final _OnLocationChanged _onLocationChanged;

  @override
  Future<void> amapLocationManagerDidUpdateLocationreGeocode(
    AMapLocationManager manager,
    CLLocation location,
    AMapLocationReGeocode reGeocode,
  ) async {
    super.amapLocationManagerDidUpdateLocationreGeocode(
      manager,
      location,
      reGeocode,
    );
    if (_onLocationChanged != null) {
      _onLocationChanged(Location.ios(location, reGeocode));
    }
  }
}
