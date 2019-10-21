import 'dart:typed_data';

import 'package:flutter/services.dart';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class ObjectFactory_Android {
  static final _channel = MethodChannel('me.yohom/amap_location_fluttify');

  static Future<android_app_Application> getandroid_app_Application() async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::getandroid_app_Application');
    return android_app_Application()..refId = refId;
  }

  static Future<android_app_Activity> getandroid_app_Activity() async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::getandroid_app_Activity');
    return android_app_Activity()..refId = refId;
  }

  static Future<android_os_Bundle> createandroid_os_Bundle() async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::createandroid_os_Bundle');
    return android_os_Bundle()..refId = refId;
  }

  static Future<android_graphics_Bitmap> createandroid_graphics_Bitmap(Uint8List bitmapBytes) async {
    final refId =
        await _channel.invokeMethod('ObjectFactory::createandroid_graphics_Bitmap', {'bitmapBytes': bitmapBytes});
    return android_graphics_Bitmap()..refId = refId;
  }

  static Future<void> release(Ref_Android ref) async {
    await _channel.invokeMethod('ObjectFactory::release', {'refId': ref.refId});
  }

  static Future<void> clearHeap() async {
    await _channel.invokeMethod('ObjectFactory::clearHeap');
  }

  static Future<void> pushStack(String name, Ref_Android ref) async {
    await _channel.invokeMethod('ObjectFactory::pushStack', {'name': name, 'refId': ref.refId});
  }

  static Future<void> pushStackJsonable(String name, dynamic jsonable) async {
    await _channel.invokeMethod('ObjectFactory::pushStackJsonable', {'name': name, 'data': jsonable});
  }

  static Future<void> clearStack() async {
    await _channel.invokeMethod('ObjectFactory::clearStack');
  }

  
  static Future<com_autonavi_aps_amapapi_model_AMapLocationServer> createcom_autonavi_aps_amapapi_model_AMapLocationServer__String(String var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_autonavi_aps_amapapi_model_AMapLocationServer__String', {"var1": var1});
    final object = com_autonavi_aps_amapapi_model_AMapLocationServer()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_AMapLocationClient> createcom_amap_api_location_AMapLocationClient__android_content_Context(android_content_Context var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_AMapLocationClient__android_content_Context', {"var1": var1.refId});
    final object = com_amap_api_location_AMapLocationClient()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_DPoint> createcom_amap_api_location_DPoint__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_DPoint__');
    final object = com_amap_api_location_DPoint()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_DPoint> createcom_amap_api_location_DPoint__double__double(double var1, double var3) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_DPoint__double__double', {"var1": var1, "var3": var3});
    final object = com_amap_api_location_DPoint()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_CoordinateConverter> createcom_amap_api_location_CoordinateConverter__android_content_Context(android_content_Context var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_CoordinateConverter__android_content_Context', {"var1": var1.refId});
    final object = com_amap_api_location_CoordinateConverter()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_CoordUtil> createcom_amap_api_location_CoordUtil__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_CoordUtil__');
    final object = com_amap_api_location_CoordUtil()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_UmidtokenInfo> createcom_amap_api_location_UmidtokenInfo__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_UmidtokenInfo__');
    final object = com_amap_api_location_UmidtokenInfo()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_AMapLocation> createcom_amap_api_location_AMapLocation__String(String var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_AMapLocation__String', {"var1": var1});
    final object = com_amap_api_location_AMapLocation()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_AMapLocation> createcom_amap_api_location_AMapLocation__android_location_Location(android_location_Location var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_AMapLocation__android_location_Location', {"var1": var1.refId});
    final object = com_amap_api_location_AMapLocation()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_AMapLocationClientOption> createcom_amap_api_location_AMapLocationClientOption__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_AMapLocationClientOption__');
    final object = com_amap_api_location_AMapLocationClientOption()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_location_AMapLocationQualityReport> createcom_amap_api_location_AMapLocationQualityReport__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_location_AMapLocationQualityReport__');
    final object = com_amap_api_location_AMapLocationQualityReport()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_fence_DistrictItem> createcom_amap_api_fence_DistrictItem__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_fence_DistrictItem__');
    final object = com_amap_api_fence_DistrictItem()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_fence_GeoFenceClient> createcom_amap_api_fence_GeoFenceClient__android_content_Context(android_content_Context var1) async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_fence_GeoFenceClient__android_content_Context', {"var1": var1.refId});
    final object = com_amap_api_fence_GeoFenceClient()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_fence_GeoFence> createcom_amap_api_fence_GeoFence__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_fence_GeoFence__');
    final object = com_amap_api_fence_GeoFence()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<com_amap_api_fence_PoiItem> createcom_amap_api_fence_PoiItem__() async {
    final int refId = await _channel.invokeMethod('ObjectFactory::createcom_amap_api_fence_PoiItem__');
    final object = com_amap_api_fence_PoiItem()..refId = refId;
  
    kNativeObjectPool.add(object);
    return object;
  }
  
}

class java_lang_Object extends Ref_Android {}

class android_content_Context extends java_lang_Object {}

class android_app_Application extends android_content_Context {}

class android_app_Activity extends android_content_Context {}

class android_os_Bundle extends java_lang_Object {}

class android_view_View extends java_lang_Object {}

class android_widget_FrameLayout extends android_view_ViewGroup {}

class android_view_ViewGroup extends android_view_View {}

class android_graphics_Point extends java_lang_Object {}

class android_graphics_PointF extends java_lang_Object {}

class android_graphics_Bitmap extends java_lang_Object {}

class android_location_Location extends java_lang_Object {}

class android_view_MotionEvent extends java_lang_Object {}

class android_graphics_drawable_Drawable extends java_lang_Object {}

class android_widget_ImageView extends android_view_View {}

class android_widget_TextView extends android_view_View {}

class android_widget_LinearLayout extends android_view_ViewGroup {}

class android_widget_RelativeLayout extends android_view_ViewGroup {}

mixin android_os_Parcelable on java_lang_Object {}