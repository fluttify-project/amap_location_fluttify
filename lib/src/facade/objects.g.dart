import 'package:flutter/services.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_location_fluttify/src/android/android.export.g.dart';

const kAmapLocationFluttifyMessageCodec = FluttifyMessageCodec(tag: 'amap_location_fluttify', androidCaster: AmapLocationFluttifyAndroidAs, iosCaster: AmapLocationFluttifyIOSAs);
const kAmapLocationFluttifyMethodCodec = StandardMethodCodec(kAmapLocationFluttifyMessageCodec);
const kAmapLocationFluttifyChannel = MethodChannel('me.yohom/amap_location_fluttify', kAmapLocationFluttifyMethodCodec);
const kAmapLocationFluttifyProjectName = 'amap_location_fluttify';