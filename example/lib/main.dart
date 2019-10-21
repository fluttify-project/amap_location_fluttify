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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('获取单次定位'),
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
                builder: (context, ss) => Center(child: Text(ss.data ?? '')),
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
