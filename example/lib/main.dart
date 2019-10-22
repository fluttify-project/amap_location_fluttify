import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_location_fluttify/amap_location_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  await AmapCore.init('f6422eadda731fb0d9ffb3260a5cf899');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AmapLocationDisposeMixin {
  Location _location;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: DecoratedColumn(
          padding: EdgeInsets.symmetric(horizontal: kSpaceLarge),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('获取单次定位'),
              onPressed: () async {
                if (await requestPermission()) {
                  AmapLocation.setLocationListener(
                    once: true,
                    locationChanged: (location) {
                      _location = location;
                      setState(() {});
                    },
                  );
                }
              },
            ),
            RaisedButton(
              child: Text('获取连续定位'),
              onPressed: () async {
                if (await requestPermission()) {
                  AmapLocation.setLocationListener(
                    once: false,
                    locationChanged: (location) {
                      _location = location;
                      setState(() {});
                    },
                  );
                }
              },
            ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.address,
                builder: (_, ss) =>
                    Center(child: Text('address: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.country,
                builder: (_, ss) =>
                    Center(child: Text('country: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.province,
                builder: (_, ss) =>
                    Center(child: Text('province: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.city,
                builder: (_, ss) =>
                    Center(child: Text('city: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.district,
                builder: (_, ss) =>
                    Center(child: Text('district: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.poiName,
                builder: (_, ss) =>
                    Center(child: Text('poiName: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.street,
                builder: (_, ss) =>
                    Center(child: Text('street: ${ss.data}' ?? '')),
              ),
            if (_location != null)
              FutureBuilder<String>(
                initialData: '',
                future: _location.aoiName,
                builder: (_, ss) =>
                    Center(child: Text('aoiName: ${ss.data}' ?? '')),
              ),
          ],
        ),
      ),
    );
  }
}

Future<bool> requestPermission() async {
  final permissions =
      await PermissionHandler().requestPermissions([PermissionGroup.location]);

  if (permissions[PermissionGroup.location] == PermissionStatus.granted) {
    return true;
  } else {
    toast('需要定位权限!');
    return false;
  }
}
