import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amap_location_fluttify/amap_location_fluttify.dart';

void main() {
  const MethodChannel channel = MethodChannel('amap_location_fluttify');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AmapLocationFluttify.platformVersion, '42');
  });
}
