// Copyright 2019-present 650 Industries. All rights reserved.

#import <ABI38_0_0EXAdsAdMob/ABI38_0_0EXAdsAdMob.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

@implementation ABI38_0_0EXAdsAdMob

ABI38_0_0UM_EXPORT_MODULE(ExpoAdsAdMob);

ABI38_0_0UM_EXPORT_METHOD_AS(setTestDeviceIDAsync,
                    setTestDeviceID:(NSString *)testDeviceID
                    resolver:(ABI38_0_0UMPromiseResolveBlock)resolve
                    rejecter:(ABI38_0_0UMPromiseRejectBlock)reject)
{
  NSArray<NSString *>* testDeviceIdentifiers = nil;
  if (testDeviceID && ![testDeviceID isEqualToString:@""]) {
    if ([testDeviceID isEqualToString:@"EMULATOR"]) {
      testDeviceIdentifiers = @[kGADSimulatorID];
    } else {
      testDeviceIdentifiers = @[testDeviceID];
    }
  }
  GADMobileAds.sharedInstance.requestConfiguration.testDeviceIdentifiers = testDeviceIdentifiers;
  resolve(nil);
}

@end
