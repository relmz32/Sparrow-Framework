//
//  AppScaffoldAppDelegate.m
//  AppScaffold
//

#import "AppDelegate.h"
#import "Game.h" 

@implementation AppDelegate
{
    SPViewController *_viewController;
    UIWindow *_window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    _window = [[UIWindow alloc] initWithFrame:screenBounds];
    
    _viewController = [[SPViewController alloc] init];
    [_viewController startWithRoot:[Game class] supportHighResolutions:YES doubleOnPad:YES];
    
    [_window setRootViewController:_viewController];
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
