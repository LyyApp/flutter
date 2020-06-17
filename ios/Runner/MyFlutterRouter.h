//
//  MyFlutterRouter.h
//  Runner
//
//  Created by YoungEE on 2020/6/15.
//  Copyright © 2020 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <flutter_boost/FlutterBoost.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyFlutterRouter : NSObject<FLBPlatform>

@property(nonatomic , strong)UINavigationController *navController;

@end

NS_ASSUME_NONNULL_END
