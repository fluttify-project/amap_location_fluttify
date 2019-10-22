# 高德 `定位`组件

[![pub package](https://img.shields.io/pub/v/amap_location_fluttify.svg)](https://pub.Flutter-io.cn/packages/amap_location_fluttify)

Dart接口基于[fluttify](https://github.com/yohom/fluttify-core-example)引擎生成. dartdoc[接口文档](https://pub.flutter-io.cn/documentation/amap_location_fluttify/latest/).

安装: 
```yaml
dependencies:
  flutter:
    sdk: flutter
  amap_location_fluttify: ^x.x.x
```

导入:
```dart
import 'package:amap_location_fluttify/amap_location_fluttify.dart';
```

使用:
```dart 
if (await requestPermission()) {
  AmapLocation.setLocationListener(
    once: true,
    locationChanged: (location) {
      _location = location;
      setState(() {});
    },
  );
}
```

## 请作者喝杯奶茶
<img src="./other/1557492318.jpg" height="300">  <img src="./other/WechatIMG111.jpeg" height="300">

## LICENSE
> Copyright 2019 yohom
>   
> Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
>
>    http://www.apache.org/licenses/LICENSE-2.0
> 
>  Unless required by applicable law or agreed to in writing, software
>  distributed under the License is distributed on an "AS IS" BASIS,
>  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
>  See the License for the specific language governing permissions and
>  limitations under the License.