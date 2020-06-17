//
//  MyFlutterRouter.m
//  Runner
//
//  Created by YoungEE on 2020/6/15.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import "MyFlutterRouter.h"
#import "DemoController.h"


@interface MyFlutterRouter()

@end

@implementation MyFlutterRouter

//+ (instancetype)shareRouter{
//    static MyFlutterRouter *_instance = nil;
//    static dispatch_once_t onceToken;
//
////    dispatch_once(onceToken, ^{
////        _instance = [[MyFlutterRouter alloc] init];
////        //在这里初始化FlutterViewController
////        //初始化Router
////        [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:_instance onStart:^(FlutterEngine * _Nonnull engine) {
////        }];
////    });
//    return  _instance;
//}

-(void) openNativeVC:(NSString*) name urlParams:(NSDictionary*) params exts:(NSDictionary*) exts{
    UIViewController *vc = DemoController.new;
    BOOL animated = [exts[@"animated"] boolValue];
    if([params[@"present"] boolValue]){
        [self.navController presentViewController:vc animated:animated completion:^{
        }];
    }else{
        [self.navController pushViewController:vc animated:animated];
    }
}

-(void)open:(NSString *)name urlParams:(NSDictionary *)urlParams exts:(NSDictionary *)exts completion:(void (^)(BOOL))completion{
    if ([name isEqualToString:@"native"]) {
        [self openNativeVC:name urlParams:urlParams exts:exts];
        return;
    }
    BOOL animate = [exts[@"animated"] boolValue];
    FLBFlutterViewContainer *vc = FLBFlutterViewContainer.new;
    [vc setName:name params:urlParams];
    [self.navController pushViewController:vc animated:animate];
    if (completion) {
        completion(YES);
    }
}


-(void)present:(NSString *)url urlParams:(NSDictionary *)urlParams exts:(NSDictionary *)exts completion:(void (^)(BOOL))completion{
    BOOL animated = [exts[@"animated"] boolValue];
    FLBFlutterViewContainer *vc = FLBFlutterViewContainer.new;
    [vc setName:url params:urlParams];
    [self.navController presentViewController:vc animated:animated completion:^{
        if (completion) {
            completion(YES);
        }
    }];
    
}
-(void)close:(NSString *)uid result:(NSDictionary *)result exts:(NSDictionary *)exts completion:(void (^)(BOOL))completion{
    BOOL animated = [exts[@"animated"] boolValue];
    animated = YES;
    FLBFlutterViewContainer *vc = FLBFlutterViewContainer.new;
    if ([vc isKindOfClass:FLBFlutterViewContainer.class] && [vc.uniqueIDString isEqualToString:uid]) {
        [vc dismissViewControllerAnimated:animated completion:^{}];
    }else{
        [self.navController popViewControllerAnimated:animated];
    }
}

@end
