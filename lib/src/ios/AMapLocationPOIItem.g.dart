import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapLocationPOIItem extends NSObject with NSCoding, NSCopying {
  // 生成getters
  Future<String> get_pId() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_pId", {'refId': refId});
    return result;
  }
  
  Future<String> get_name() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_name", {'refId': refId});
    return result;
  }
  
  Future<String> get_type() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_type", {'refId': refId});
    return result;
  }
  
  Future<String> get_typeCode() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_typeCode", {'refId': refId});
    return result;
  }
  
  Future<String> get_address() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_address", {'refId': refId});
    return result;
  }
  
  Future<String> get_tel() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_tel", {'refId': refId});
    return result;
  }
  
  Future<String> get_province() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_province", {'refId': refId});
    return result;
  }
  
  Future<String> get_city() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_city", {'refId': refId});
    return result;
  }
  
  Future<String> get_district() async {
    final result = await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod("AMapLocationPOIItem::get_district", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_pId(String pId) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_pId', {'refId': refId, "pId": pId});
  
  
  }
  
  Future<void> set_name(String name) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_name', {'refId': refId, "name": name});
  
  
  }
  
  Future<void> set_type(String type) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_type', {'refId': refId, "type": type});
  
  
  }
  
  Future<void> set_typeCode(String typeCode) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_typeCode', {'refId': refId, "typeCode": typeCode});
  
  
  }
  
  Future<void> set_address(String address) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_address', {'refId': refId, "address": address});
  
  
  }
  
  Future<void> set_tel(String tel) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_tel', {'refId': refId, "tel": tel});
  
  
  }
  
  Future<void> set_province(String province) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_province', {'refId': refId, "province": province});
  
  
  }
  
  Future<void> set_city(String city) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_city', {'refId': refId, "city": city});
  
  
  }
  
  Future<void> set_district(String district) async {
    await MethodChannel('me.yohom/amap_location_fluttify').invokeMethod('AMapLocationPOIItem::set_district', {'refId': refId, "district": district});
  
  
  }
  

  // 生成方法们
  
}