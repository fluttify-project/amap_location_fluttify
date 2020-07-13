## 0.13.2
- fix: regecode空安全
- enhance: 添加监听定位的最小更新距离.

## 0.13.1
- enhance: 简化导出

## 0.13.0
- enhance: 提升依赖

## 0.12.0
- enhance: 更新底层依赖
- fix: android超时时间单位为毫秒

## 0.11.0
- enhance: [breaking change] timeout类型换为更直观的Duration类
- enhance: Location类增加speed字段 [#48]

## 0.10.0
- enhance: 更新底层依赖

## 0.9.0
- enhance: [breaking change] 使用原始值代替Future返回, 简化使用
- roll engine #939e12d7

## 0.8.11
- roll engine #481e45c1

## 0.8.10
- roll engine #dbad1c35 (#53)
- fix: 直接调用stopLocation时, 对client的空判断

## 0.8.9
- roll engine #0a5ab5f (#39)

## 0.8.8
- roll engine #b356b08

## 0.8.7
- roll engine #1053dca

## 0.8.6
- 提升依赖

## 0.8.5
- docs: apk下载链接修正
- docs: 去重重复的信息

## 0.8.4
- enhance: 加入打包的key
- docs: README加入apk下载二维码
- roll engine #107df19

## 0.8.3
- roll engine #4d92ce0. 主要解决type_op冲突的问题.

## 0.8.2
- roll engine #5c1b957

## 0.8.1
- feat: Location增加accuracy字段 (#38)

## 0.8.0
- enhance: 提升依赖
- roll engine #ea37ae9

## 0.7.0
- 提升依赖

## 0.6.0
- 提升依赖

## 0.5.1
- enhance: 增加bearing(设备移动方向属性), 此属性需要较长时间时间才能获取到数据, 建议在连续定位中使用.
- enhance: 提供仅在android端有效的DeviceSensor枚举

## 0.5.0
- enhance: 导出amap_core_fluttify
- roll engine #a918944
- 适配flutter 1.12.13

## 0.4.2
- fix: 连续定位空指针异常

## 0.4.1
- fix: 单次定位防止重复订阅

## 0.4.0
- enhance: [breaking change] 单次和连续定位单独实现，并返回Future和Stream

## 0.3.2
- 解决依赖冲突

## 0.3.1
- 更新依赖

## 0.3.0
- 更新底层

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
