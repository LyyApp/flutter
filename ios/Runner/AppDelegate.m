#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MyFlutterRouter.h"
#import "DemoController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MyFlutterRouter *router = [MyFlutterRouter new];
    
    [FlutterBoostPlugin.sharedInstance startFlutterWithPlatform:router onStart:^(FlutterEngine * _Nonnull engine) {

        FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"flutter_native_channel" binaryMessenger:engine.binaryMessenger];
        [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
            NSString *method = call.method;
            if ([method isEqualToString:@"getPlatformVersion"]) {
                NSString *sysVersion = [[UIDevice currentDevice] systemVersion];
                result(sysVersion);
            }else{
                result(FlutterMethodNotImplemented);
            }
        }];

    }];

//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    [self.window makeKeyWindow];
//
//    FLBFlutterViewContainer *flutterContainer = [FLBFlutterViewContainer new];
//    [flutterContainer setName:@"main" params:@{}];
//
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:flutterContainer];
//    nav.navigationBar.hidden = YES;
//    router.navController = nav;
//    self.window.rootViewController = nav;
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
     
     
     [self.window makeKeyAndVisible];
     
    
    DemoController *vc = DemoController.new;
     vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"hybrid" image:nil tag:0];
    
     
     FLBFlutterViewContainer *fvc = FLBFlutterViewContainer.new;
     [fvc setName:@"tab" params:@{}];
//     fvc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"flutter_tab" image:nil tag:1];
     
     
     UITabBarController *tabVC = [[UITabBarController alloc] init];
     UINavigationController *rvc = [[UINavigationController alloc] initWithRootViewController:tabVC];
     
    
     router.navController = rvc;
     
     tabVC.viewControllers = @[vc,fvc];
     
     self.window.rootViewController = rvc;
     
     UIButton *nativeButton = [UIButton buttonWithType:UIButtonTypeCustom];
     nativeButton.frame = CGRectMake(self.window.frame.size.width * 0.5 - 50, 200, 100, 40);
     nativeButton.backgroundColor = [UIColor redColor];
     [nativeButton setTitle:@"push native" forState:UIControlStateNormal];
     [nativeButton addTarget:self action:@selector(pushNative) forControlEvents:UIControlEventTouchUpInside];
     [self.window addSubview:nativeButton];
     
     UIButton *pushEmbeded = [UIButton buttonWithType:UIButtonTypeCustom];
     pushEmbeded.frame = CGRectMake(self.window.frame.size.width * 0.5 - 70, 150, 140, 40);
     pushEmbeded.backgroundColor = [UIColor redColor];
     [pushEmbeded setTitle:@"push embeded" forState:UIControlStateNormal];
     [pushEmbeded addTarget:self action:@selector(pushEmbeded) forControlEvents:UIControlEventTouchUpInside];
     [self.window addSubview:pushEmbeded];
    
    return  YES;
}

@end
