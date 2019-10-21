import 'dart:async';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';

import 'enums.dart';
import 'models.dart';

class AmapLocation {
  /// 获取单次定位信息
  ///
  /// 选择定位模式[mode], 设置定位同时是否需要返回地址描述[needAddress], 设置定位请求超时时间，默认为30秒[timeout]
  /// 设置是否开启定位缓存机制[cacheEnable].
  static Future<Location> getLocation({
    LocationAccuracy mode,
    bool needAddress,
    int timeout,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<Location>(sync: true);

    return platform(
      android: (pool) async {
        // 获取上下文, 这里获取的是Application
        final context =
            await ObjectFactory_Android.getandroid_app_Application();

        // 创建定位客户端
        final client = await ObjectFactory_Android
            .createcom_amap_api_location_AMapLocationClient__android_content_Context(
                context);

        // 设置回调
        await client.setLocationListener(_AndroidLocationDelegate(_controller));

        // 创建选项
        final options = await ObjectFactory_Android
            .createcom_amap_api_location_AMapLocationClientOption__();
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
        await client.setLocationOption(options);

        // 开始定位
        await client.startLocation();

        return _controller.stream.first;
      },
      ios: (pool) async {
        final locationManager =
            await ObjectFactory_iOS.createAMapLocationManager();

        // 设置回调
        locationManager.set_delegate(_IOSLocationDelegate(_controller));

        // 设置定位模式
        if (mode != null)
          switch (mode) {
            // 高精度定位模式：会同时使用网络定位和GPS定位，优先返回最高精度的定位结果，以及对应的地址描述信息。
            case LocationAccuracy.High:
              await locationManager.set_desiredAccuracy(100);
              break;
            // 低功耗定位模式：不会使用GPS和其他传感器，只会使用网络定位（Wi-Fi和基站定位）；
            case LocationAccuracy.Low:
              await locationManager.set_desiredAccuracy(10);

              break;
          }
        // 设置定位请求超时时间，默认为30秒。
        if (timeout != null) await locationManager.set_locationTimeout(timeout);

        locationManager.requestLocationWithReGeocodeCompletionBlock(
          needAddress ?? true,
          (location, regeocode, error) {
            _controller..add(Location.ios(location, regeocode))..close();
          },
        );

        return _controller.stream.first;
      },
    );
  }
}

class _AndroidLocationDelegate extends java_lang_Object
    with com_amap_api_location_AMapLocationListener {
  _AndroidLocationDelegate(this._streamController);

  final StreamController _streamController;

  @override
  Future<void> onLocationChanged(
    com_amap_api_location_AMapLocation var1,
  ) async {
    super.onLocationChanged(var1);
    if (_streamController?.isClosed == false) {
      _streamController?.add(Location.android(var1));
      _streamController?.close();
    }
  }
}

class _IOSLocationDelegate extends NSObject with AMapLocationManagerDelegate {
  _IOSLocationDelegate(this._streamController);

  final StreamController _streamController;
}
