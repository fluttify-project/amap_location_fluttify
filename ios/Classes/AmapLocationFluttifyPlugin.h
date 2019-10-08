#import <Flutter/Flutter.h>
#import <AMapLocationKit/AMapLocationKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface AmapLocationFluttifyPlugin : NSObject<AMapGeoFenceManagerDelegate, AMapLocationManagerDelegate, FlutterPlugin>

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar;

@end
