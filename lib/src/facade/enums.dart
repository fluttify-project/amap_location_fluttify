/// 定位模式
enum LocationAccuracy {
  /// 高
  High,

  /// 低
  Low,

  /// 设备传感器 仅android
  DeviceSensor,
}

/// 电子围栏激活动作
enum GeoFenceActiveAction {
  In,
  Out,
  Stayed,
}

/// 电子围栏状态
enum GeoFenceStatus {
  Unknown,
  In,
  Out,
  Stayed,
}
