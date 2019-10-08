#import "AmapLocationFluttifyPlugin.h"

typedef void (^Handler)(NSObject <FlutterPluginRegistrar> *, NSDictionary<NSString *, NSObject *> *, FlutterResult);

NSMutableDictionary<NSNumber *, NSObject *> *HEAP;

@implementation AmapLocationFluttifyPlugin {
  NSObject <FlutterPluginRegistrar> * _registrar;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{
      @"AMapGeoFenceManager::addPolygonRegionForMonitoringWithCoordinatesCountcustomID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordinatesRefIdArray = (NSArray*) args[@"coordinates"];
          CLLocationCoordinate2D coordinates[coordinatesRefIdArray.count];
      
          for (int i = 0; i < coordinatesRefIdArray.count; i++) {
              NSValue* coordinatesValue = (NSValue*) HEAP[[coordinatesRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordinatesItem;
              [coordinatesValue getValue:&coordinatesItem];
              coordinates[i] = coordinatesItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::addPolygonRegionForMonitoringWithCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addPolygonRegionForMonitoringWithCoordinates : coordinates count: count customID: customID];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapGeoFenceManager::addKeywordPOIRegionForMonitoringWithKeywordPOITypecitysizecustomID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSString* keyword = (NSString*) args[@"keyword"];
          // jsonable参数
          NSString* type = (NSString*) args[@"type"];
          // jsonable参数
          NSString* city = (NSString*) args[@"city"];
          // jsonable参数
          NSInteger size = [args[@"size"] integerValue];
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::addKeywordPOIRegionForMonitoringWithKeyword(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addKeywordPOIRegionForMonitoringWithKeyword : keyword POIType: type city: city size: size customID: customID];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapGeoFenceManager::addAroundPOIRegionForMonitoringWithLocationPointAroundRadiuskeywordPOITypesizecustomID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* locationPointValue = (NSValue*) HEAP[@([args[@"locationPoint"] integerValue])];
          CLLocationCoordinate2D locationPoint;
          [locationPointValue getValue:&locationPoint];
          // jsonable参数
          NSInteger aroundRadius = [args[@"aroundRadius"] integerValue];
          // jsonable参数
          NSString* keyword = (NSString*) args[@"keyword"];
          // jsonable参数
          NSString* type = (NSString*) args[@"type"];
          // jsonable参数
          NSInteger size = [args[@"size"] integerValue];
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::addAroundPOIRegionForMonitoringWithLocationPoint(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addAroundPOIRegionForMonitoringWithLocationPoint : locationPoint aroundRadius: aroundRadius keyword: keyword POIType: type size: size customID: customID];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapGeoFenceManager::addDistrictRegionForMonitoringWithDistrictNameCustomID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSString* districtName = (NSString*) args[@"districtName"];
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::addDistrictRegionForMonitoringWithDistrictName(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addDistrictRegionForMonitoringWithDistrictName : districtName customID: customID];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapGeoFenceManager::removeGeoFenceRegionsWithCustomID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::removeGeoFenceRegionsWithCustomID(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref removeGeoFenceRegionsWithCustomID : customID];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapGeoFenceManager::removeAllGeoFenceRegions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapGeoFenceManager@%@::removeAllGeoFenceRegions(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref removeAllGeoFenceRegions ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapLocationRegion::containsCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationRegion@%@::containsCoordinate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref containsCoordinate: coordinate];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapLocationManager::headingAvailable": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager::headingAvailable(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapLocationManager headingAvailable];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapLocationManager::startUpdatingHeading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager@%@::startUpdatingHeading(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref startUpdatingHeading ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapLocationManager::stopUpdatingHeading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager@%@::stopUpdatingHeading(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref stopUpdatingHeading ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapLocationManager::dismissHeadingCalibrationDisplay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager@%@::dismissHeadingCalibrationDisplay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref dismissHeadingCalibrationDisplay ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapLocationManager::startUpdatingLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager@%@::startUpdatingLocation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref startUpdatingLocation ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapLocationManager::stopUpdatingLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapLocationManager@%@::stopUpdatingLocation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref stopUpdatingLocation ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapURLSearch::getLatestAMapApp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::getLatestAMapApp(暂未实现参数打印)");
      
          // 开始调用
          [AMapURLSearch getLatestAMapApp ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapNavigation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNaviConfig* config = (AMapNaviConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapNavigation(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapNavigation: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteConfig* config = (AMapRouteConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapRouteSearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapRouteSearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapPOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIConfig* config = (AMapPOIConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapPOISearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapPOISearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapServices::sharedServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapServices::sharedServices(暂未实现参数打印)");
      
          // 开始调用
          AMapServices* result = [AMapServices sharedServices];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapGeoFenceManager::get_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::get_pausesLocationUpdatesAutomatically");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.pausesLocationUpdatesAutomatically;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoFenceManager::get_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::get_allowsBackgroundLocationUpdates");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.allowsBackgroundLocationUpdates;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoFenceManager::get_detectRiskOfFakeLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::get_detectRiskOfFakeLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.detectRiskOfFakeLocation;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationRegion::get_identifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationRegion::get_identifier");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.identifier;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationRegion::get_notifyOnEntry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationRegion::get_notifyOnEntry");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.notifyOnEntry;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationRegion::get_notifyOnExit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationRegion::get_notifyOnExit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.notifyOnExit;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoFenceRegion::get_identifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceRegion::get_identifier");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceRegion* ref = (AMapGeoFenceRegion*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.identifier;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapGeoFenceRegion::get_customID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceRegion::get_customID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceRegion* ref = (AMapGeoFenceRegion*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.customID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationManager::get_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_pausesLocationUpdatesAutomatically");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.pausesLocationUpdatesAutomatically;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationManager::get_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_allowsBackgroundLocationUpdates");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.allowsBackgroundLocationUpdates;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationManager::get_locationTimeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_locationTimeout");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.locationTimeout;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationManager::get_reGeocodeTimeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_reGeocodeTimeout");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.reGeocodeTimeout;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationManager::get_locatingWithReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_locatingWithReGeocode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.locatingWithReGeocode;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationManager::get_detectRiskOfFakeLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::get_detectRiskOfFakeLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.detectRiskOfFakeLocation;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationReGeocode::get_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationReGeocode::get_formattedAddress");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationReGeocode* ref = (AMapLocationReGeocode*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.formattedAddress;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPoint::get_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPoint::get_latitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPoint* ref = (AMapLocationPoint*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.latitude;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationPoint::get_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPoint::get_longitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPoint* ref = (AMapLocationPoint*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.longitude;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapLocationPOIItem::get_pId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_pId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.pId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_type");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.type;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_typeCode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_typeCode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.typeCode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_address");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.address;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_tel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.tel;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.province;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_city");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.city;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationPOIItem::get_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::get_district");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.district;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapLocationDistrictItem::get_cityCode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationDistrictItem::get_cityCode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationDistrictItem* ref = (AMapLocationDistrictItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.cityCode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destination;
      
          NSLog(@"AMapNaviConfig::get_destination:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapNaviConfig::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.startCoordinate;
      
          NSLog(@"AMapRouteConfig::get_startCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destinationCoordinate;
      
          NSLog(@"AMapRouteConfig::get_destinationCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_drivingStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.drivingStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_transitStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapTransitStrategy result = ref.transitStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_routeType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapRouteSearchType result = ref.routeType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.leftTopCoordinate;
      
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapPOIConfig::get_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.rightBottomCoordinate;
      
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapServices::get_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_apiKey");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.apiKey;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapServices::get_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_enableHTTPS");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.enableHTTPS;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapServices::get_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_crashReportEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.crashReportEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapGeoFenceManager::set_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::set_pausesLocationUpdatesAutomatically");
      
          // 参数
          // jsonable参数
          BOOL pausesLocationUpdatesAutomatically = [args[@"pausesLocationUpdatesAutomatically"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          ref.pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
          methodResult(@"success");
      },
      
      @"AMapGeoFenceManager::set_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::set_allowsBackgroundLocationUpdates");
      
          // 参数
          // jsonable参数
          BOOL allowsBackgroundLocationUpdates = [args[@"allowsBackgroundLocationUpdates"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          ref.allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
          methodResult(@"success");
      },
      
      @"AMapGeoFenceManager::set_detectRiskOfFakeLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapGeoFenceManager::set_detectRiskOfFakeLocation");
      
          // 参数
          // jsonable参数
          BOOL detectRiskOfFakeLocation = [args[@"detectRiskOfFakeLocation"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapGeoFenceManager* ref = (AMapGeoFenceManager*) HEAP[@(refId)];
      
          ref.detectRiskOfFakeLocation = detectRiskOfFakeLocation;
          methodResult(@"success");
      },
      
      @"AMapLocationRegion::set_notifyOnEntry": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationRegion::set_notifyOnEntry");
      
          // 参数
          // jsonable参数
          BOOL notifyOnEntry = [args[@"notifyOnEntry"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          ref.notifyOnEntry = notifyOnEntry;
          methodResult(@"success");
      },
      
      @"AMapLocationRegion::set_notifyOnExit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationRegion::set_notifyOnExit");
      
          // 参数
          // jsonable参数
          BOOL notifyOnExit = [args[@"notifyOnExit"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationRegion* ref = (AMapLocationRegion*) HEAP[@(refId)];
      
          ref.notifyOnExit = notifyOnExit;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_pausesLocationUpdatesAutomatically");
      
          // 参数
          // jsonable参数
          BOOL pausesLocationUpdatesAutomatically = [args[@"pausesLocationUpdatesAutomatically"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_allowsBackgroundLocationUpdates");
      
          // 参数
          // jsonable参数
          BOOL allowsBackgroundLocationUpdates = [args[@"allowsBackgroundLocationUpdates"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_locationTimeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_locationTimeout");
      
          // 参数
          // jsonable参数
          NSInteger locationTimeout = [args[@"locationTimeout"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.locationTimeout = locationTimeout;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_reGeocodeTimeout": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_reGeocodeTimeout");
      
          // 参数
          // jsonable参数
          NSInteger reGeocodeTimeout = [args[@"reGeocodeTimeout"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.reGeocodeTimeout = reGeocodeTimeout;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_locatingWithReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_locatingWithReGeocode");
      
          // 参数
          // jsonable参数
          BOOL locatingWithReGeocode = [args[@"locatingWithReGeocode"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.locatingWithReGeocode = locatingWithReGeocode;
          methodResult(@"success");
      },
      
      @"AMapLocationManager::set_detectRiskOfFakeLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationManager::set_detectRiskOfFakeLocation");
      
          // 参数
          // jsonable参数
          BOOL detectRiskOfFakeLocation = [args[@"detectRiskOfFakeLocation"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationManager* ref = (AMapLocationManager*) HEAP[@(refId)];
      
          ref.detectRiskOfFakeLocation = detectRiskOfFakeLocation;
          methodResult(@"success");
      },
      
      @"AMapLocationReGeocode::set_formattedAddress": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationReGeocode::set_formattedAddress");
      
          // 参数
          // jsonable参数
          NSString* formattedAddress = (NSString*) args[@"formattedAddress"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationReGeocode* ref = (AMapLocationReGeocode*) HEAP[@(refId)];
      
          ref.formattedAddress = formattedAddress;
          methodResult(@"success");
      },
      
      @"AMapLocationPoint::set_latitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPoint::set_latitude");
      
          // 参数
          // jsonable参数
          CGFloat latitude = [args[@"latitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPoint* ref = (AMapLocationPoint*) HEAP[@(refId)];
      
          ref.latitude = latitude;
          methodResult(@"success");
      },
      
      @"AMapLocationPoint::set_longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPoint::set_longitude");
      
          // 参数
          // jsonable参数
          CGFloat longitude = [args[@"longitude"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPoint* ref = (AMapLocationPoint*) HEAP[@(refId)];
      
          ref.longitude = longitude;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_pId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_pId");
      
          // 参数
          // jsonable参数
          NSString* pId = (NSString*) args[@"pId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.pId = pId;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_name");
      
          // 参数
          // jsonable参数
          NSString* name = (NSString*) args[@"name"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.name = name;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_type": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_type");
      
          // 参数
          // jsonable参数
          NSString* type = (NSString*) args[@"type"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.type = type;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_typeCode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_typeCode");
      
          // 参数
          // jsonable参数
          NSString* typeCode = (NSString*) args[@"typeCode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.typeCode = typeCode;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_address": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_address");
      
          // 参数
          // jsonable参数
          NSString* address = (NSString*) args[@"address"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.address = address;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_tel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_tel");
      
          // 参数
          // jsonable参数
          NSString* tel = (NSString*) args[@"tel"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.tel = tel;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_province");
      
          // 参数
          // jsonable参数
          NSString* province = (NSString*) args[@"province"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_city": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_city");
      
          // 参数
          // jsonable参数
          NSString* city = (NSString*) args[@"city"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.city = city;
          methodResult(@"success");
      },
      
      @"AMapLocationPOIItem::set_district": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationPOIItem::set_district");
      
          // 参数
          // jsonable参数
          NSString* district = (NSString*) args[@"district"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationPOIItem* ref = (AMapLocationPOIItem*) HEAP[@(refId)];
      
          ref.district = district;
          methodResult(@"success");
      },
      
      @"AMapLocationDistrictItem::set_cityCode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapLocationDistrictItem::set_cityCode");
      
          // 参数
          // jsonable参数
          NSString* cityCode = (NSString*) args[@"cityCode"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapLocationDistrictItem* ref = (AMapLocationDistrictItem*) HEAP[@(refId)];
      
          ref.cityCode = cityCode;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_destination");
      
          // 参数
          // 结构体参数
          NSValue* destinationValue = (NSValue*) HEAP[@([args[@"destination"] integerValue])];
          CLLocationCoordinate2D destination;
          [destinationValue getValue:&destination];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_strategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy strategy = (AMapDrivingStrategy) [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_startCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) HEAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_destinationCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* destinationCoordinateValue = (NSValue*) HEAP[@([args[@"destinationCoordinate"] integerValue])];
          CLLocationCoordinate2D destinationCoordinate;
          [destinationCoordinateValue getValue:&destinationCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_drivingStrategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy drivingStrategy = (AMapDrivingStrategy) [args[@"drivingStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.drivingStrategy = drivingStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_transitStrategy");
      
          // 参数
          // 枚举参数
          AMapTransitStrategy transitStrategy = (AMapTransitStrategy) [args[@"transitStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.transitStrategy = transitStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_routeType");
      
          // 参数
          // 枚举参数
          AMapRouteSearchType routeType = (AMapRouteSearchType) [args[@"routeType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.routeType = routeType;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_keywords");
      
          // 参数
          // jsonable参数
          NSString* keywords = (NSString*) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_leftTopCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* leftTopCoordinateValue = (NSValue*) HEAP[@([args[@"leftTopCoordinate"] integerValue])];
          CLLocationCoordinate2D leftTopCoordinate;
          [leftTopCoordinateValue getValue:&leftTopCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.leftTopCoordinate = leftTopCoordinate;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_rightBottomCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* rightBottomCoordinateValue = (NSValue*) HEAP[@([args[@"rightBottomCoordinate"] integerValue])];
          CLLocationCoordinate2D rightBottomCoordinate;
          [rightBottomCoordinateValue getValue:&rightBottomCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.rightBottomCoordinate = rightBottomCoordinate;
          methodResult(@"success");
      },
      
      @"AMapServices::set_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_apiKey");
      
          // 参数
          // jsonable参数
          NSString* apiKey = (NSString*) args[@"apiKey"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.apiKey = apiKey;
          methodResult(@"success");
      },
      
      @"AMapServices::set_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_enableHTTPS");
      
          // 参数
          // jsonable参数
          BOOL enableHTTPS = [args[@"enableHTTPS"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.enableHTTPS = enableHTTPS;
          methodResult(@"success");
      },
      
      @"AMapServices::set_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_crashReportEnabled");
      
          // 参数
          // jsonable参数
          BOOL crashReportEnabled = [args[@"crashReportEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.crashReportEnabled = crashReportEnabled;
          methodResult(@"success");
      },
      
      @"RefClass::isKindOfAMapGeoFenceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoFenceManager class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationRegion class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapGeoFenceRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapGeoFenceRegion class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationManager class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationReGeocode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationPoint class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationPOIItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationPOIItem class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapLocationDistrictItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapLocationDistrictItem class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapURLSearch class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNaviConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapServices class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::asAMapGeoFenceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeoFenceManager *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationRegion *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapGeoFenceRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapGeoFenceRegion *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationManager *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationReGeocode *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationPoint *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationPOIItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationPOIItem *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapLocationDistrictItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapLocationDistrictItem *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapURLSearch *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNaviConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapServices *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"ObjectFactory::createAMapGeoFenceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoFenceManager");
      
          AMapGeoFenceManager* ref = [[AMapGeoFenceManager alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationRegion");
      
          AMapLocationRegion* ref = [[AMapLocationRegion alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapGeoFenceRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapGeoFenceRegion");
      
          AMapGeoFenceRegion* ref = [[AMapGeoFenceRegion alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationManager");
      
          AMapLocationManager* ref = [[AMapLocationManager alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationReGeocode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationReGeocode");
      
          AMapLocationReGeocode* ref = [[AMapLocationReGeocode alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationPoint");
      
          AMapLocationPoint* ref = [[AMapLocationPoint alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationPOIItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationPOIItem");
      
          AMapLocationPOIItem* ref = [[AMapLocationPOIItem alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapLocationDistrictItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapLocationDistrictItem");
      
          AMapLocationDistrictItem* ref = [[AMapLocationDistrictItem alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapURLSearch");
      
          AMapURLSearch* ref = [[AMapURLSearch alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNaviConfig");
      
          AMapNaviConfig* ref = [[AMapNaviConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteConfig");
      
          AMapRouteConfig* ref = [[AMapRouteConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIConfig");
      
          AMapPOIConfig* ref = [[AMapPOIConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapServices");
      
          AMapServices* ref = [[AMapServices alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
    };
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  // 引用Map
  HEAP = @{}.mutableCopy;

  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_location_fluttify"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:[[AmapLocationFluttifyPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];
  if ([@"ObjectFactory::release" isEqualToString:methodCall.method]) {
    [HEAP removeObjectForKey:(NSNumber *) args[@"refId"]];
    methodResult(@"success");
  } else if ([@"ObjectFactory::clearRefMap" isEqualToString:methodCall.method]) {
    [HEAP removeAllObjects];
    methodResult(@"success");
  } else if ([@"ObjectFactory::createCLLocationCoordinate2D" isEqualToString:methodCall.method]) {
    CLLocationDegrees latitude = [args[@"latitude"] doubleValue];
    CLLocationDegrees longitude = [args[@"longitude"] doubleValue];

    CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

    NSValue* dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];
    HEAP[@(dataValue.hash)] = dataValue;

    methodResult(@(dataValue.hash));
  } else {
    if (_handlerMap[methodCall.method] != nil) {
      _handlerMap[methodCall.method](_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }
}

// 委托方法们
- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager doRequireLocationAuth: (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManagerDoRequireLocationAuth");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* arglocationManager = @(locationManager.hash);
  HEAP[arglocationManager] = locationManager;

  [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDoRequireLocationAuth" arguments:@{@"manager": argmanager, @"locationManager": arglocationManager}];
  
}

- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager didAddRegionForMonitoringFinished: (NSArray<AMapGeoFenceRegion*>*)regions customID: (NSString*)customID error: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 列表回调参数
  NSMutableArray<NSNumber*>* argregions = [NSMutableArray arrayWithCapacity:regions.count];
  for (int i = 0; i < regions.count; i++) {
      argregions[i] = @(regions.hash);
      HEAP[@(regions.hash)] = regions;
  }
  // jsonable回调参数
  NSNumber* argcustomID = @(customID);
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidAddRegionForMonitoringFinishedcustomIDerror" arguments:@{@"manager": argmanager, @"regions": argregions, @"customID": argcustomID, @"error": argerror}];
  
}

- (void)amapGeoFenceManager : (AMapGeoFenceManager*)manager didGeoFencesStatusChangedForRegion: (AMapGeoFenceRegion*)region customID: (NSString*)customID error: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapGeoFenceManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;
  // jsonable回调参数
  NSNumber* argcustomID = @(customID);
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::AMapGeoFenceManagerDelegate::amapGeoFenceManagerDidGeoFencesStatusChangedForRegioncustomIDerror" arguments:@{@"manager": argmanager, @"region": argregion, @"customID": argcustomID, @"error": argerror}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager doRequireLocationAuth: (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDoRequireLocationAuth");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* arglocationManager = @(locationManager.hash);
  HEAP[arglocationManager] = locationManager;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDoRequireLocationAuth" arguments:@{@"manager": argmanager, @"locationManager": arglocationManager}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didFailWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidFailWithError");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidFailWithError" arguments:@{@"manager": argmanager, @"error": argerror}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateLocation: (CLLocation*)location
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidUpdateLocation");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* arglocation = @(location.hash);
  HEAP[arglocation] = location;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidUpdateLocation" arguments:@{@"manager": argmanager, @"location": arglocation}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateLocation: (CLLocation*)location reGeocode: (AMapLocationReGeocode*)reGeocode
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidUpdateLocationreGeocode");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* arglocation = @(location.hash);
  HEAP[arglocation] = location;
  // 引用回调参数
  NSNumber* argreGeocode = @(reGeocode.hash);
  HEAP[argreGeocode] = reGeocode;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidUpdateLocationreGeocode" arguments:@{@"manager": argmanager, @"location": arglocation, @"reGeocode": argreGeocode}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didChangeAuthorizationStatus: (CLAuthorizationStatus)status
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidChangeAuthorizationStatus");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argstatus = @(status.hash);
  HEAP[argstatus] = status;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidChangeAuthorizationStatus" arguments:@{@"manager": argmanager, @"status": argstatus}];
  
}

- (BOOL)amapLocationManagerShouldDisplayHeadingCalibration : (AMapLocationManager*)manager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;

  // __block #__callback_result_type__# _callbackResult = nil;
  // [channel invokeMethod:@"#__callback_method__#"
  //             arguments:@{#__callback_args__#}
  //                result:^(id result) {
  //                  #__raw_callback_result__#
  //                }];
  //
  // while (_callbackResult == nil) {
  //   // _callbackResult有值前, 空转
  // }
  //
  // #__struct_value__#
  //
  // return #__callback_result__#;
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  return nil;
}

- (void)amapLocationManager : (AMapLocationManager*)manager didUpdateHeading: (CLHeading*)newHeading
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidUpdateHeading");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argnewHeading = @(newHeading.hash);
  HEAP[argnewHeading] = newHeading;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidUpdateHeading" arguments:@{@"manager": argmanager, @"newHeading": argnewHeading}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didStartMonitoringForRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidStartMonitoringForRegion");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidStartMonitoringForRegion" arguments:@{@"manager": argmanager, @"region": argregion}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didEnterRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidEnterRegion");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidEnterRegion" arguments:@{@"manager": argmanager, @"region": argregion}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didExitRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidExitRegion");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidExitRegion" arguments:@{@"manager": argmanager, @"region": argregion}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager didDetermineState: (AMapLocationRegionState)state forRegion: (AMapLocationRegion*)region
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerDidDetermineStateforRegion");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argstate = @(state.hash);
  HEAP[argstate] = state;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerDidDetermineStateforRegion" arguments:@{@"manager": argmanager, @"state": argstate, @"region": argregion}];
  
}

- (void)amapLocationManager : (AMapLocationManager*)manager monitoringDidFailForRegion: (AMapLocationRegion*)region withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"AMapLocationManagerDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"AMapLocationManagerDelegate::amapLocationManagerMonitoringDidFailForRegionwithError");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 引用回调参数
  NSNumber* argregion = @(region.hash);
  HEAP[argregion] = region;
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::AMapLocationManagerDelegate::amapLocationManagerMonitoringDidFailForRegionwithError" arguments:@{@"manager": argmanager, @"region": argregion, @"error": argerror}];
  
}


@end