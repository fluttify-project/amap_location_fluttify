## 0.2.7
- doc: 增加`await`的说明
- feat: 增加ios端requireAlwaysAuth的处理

## 0.2.6
- fix: dispose时，置空_androidClient和_iosClient，防止在页面级别的State中释放了client之后，重新定位时，client不为空而没有去重新创建原生client导致的原生client为空。

## 0.2.5
- enhancement: 经纬度统一使用LatLng
- enhancement: 调整设置回调的位置

## 0.2.4
- fix: 导出enums.dart; 删除utils.g.dart

## 0.2.3
- fix: 高德的key不应该放在library模块里

## 0.2.2
- fix: 释放原生对象时, 只释放当前插件创建的对象

## 0.2.1
- 更新README
- 更新引擎版本 38df15a

## 0.2.0
- setLocationListener -> startLocation

## 0.1.0
- 单次定位; 连续定位
