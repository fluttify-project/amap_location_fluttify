import 'package:flutter/services.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

const kAmapLocationFluttifyChannel = MethodChannel(
  'me.yohom/amap_location_fluttify',
  StandardMethodCodec(FluttifyMessageCodec('amap_location_fluttify')),
);

const kAmapLocationFluttifyProjectName = 'amap_location_fluttify';