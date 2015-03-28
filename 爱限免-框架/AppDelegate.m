//
//  AppDelegate.m
//  爱限免-框架
//
//  Created by apple on 15/3/10.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import "AppDelegate.h"
#import "HostViewController.h"
#import "LimitViewController.h"
#import "SaleViewController.h"
#import "TopicViewController.h"
#import "FreeViewController.h"

#import "TabBarViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self getTabbarController];
    
    return YES;

//    HostViewController *host = [[HostViewController alloc]init];
//    UINavigationController *navHost = [[UINavigationController alloc]initWithRootViewController:host];
//    
//    LimitViewController *limit = [[LimitViewController alloc]init];
//    UINavigationController *navLimit = [[UINavigationController alloc]initWithRootViewController:limit];
//    navLimit.title = @"限免";
//    
//    SaleViewController *sale = [[SaleViewController alloc]init];
//    UINavigationController *navSale = [[UINavigationController alloc]initWithRootViewController:sale];
//    
//    TopicViewController *topic = [[TopicViewController alloc]init];
//    UINavigationController *navTopic = [[UINavigationController alloc]initWithRootViewController:topic];
//    
//    FreeViewController *free = [[FreeViewController alloc]init];
//    UINavigationController *navFree = [[UINavigationController alloc]initWithRootViewController:free];
//    
//    //创建一个标签控制器
//    UITabBarController *tabBarController = [[UITabBarController alloc]init];
//    
//    tabBarController.viewControllers = @[navLimit, navSale, navFree, navTopic, navHost];
//    
//    self.window.rootViewController = tabBarController;
}

- (void)getTabbarController
{
    
    TabBarViewController *tabBarController = [[TabBarViewController alloc]init];
    tabBarController.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar_bg"];
    
    [tabBarController controllerWithString:@"LimitViewController" title:@"限免" andImage:@"tabbar_limitfree"];
    [tabBarController controllerWithString:@"SaleViewController" title:@"降价" andImage:@"tabbar_reduceprice"];
    [tabBarController controllerWithString:@"FreeViewController" title:@"免费" andImage:@"tabbar_appfree"];
    [tabBarController controllerWithString:@"HostViewController" title:@"热榜" andImage:@"tabbar_rank"];
    [tabBarController controllerWithString:@"TopicViewController" title:@"专题" andImage:@"tabbar_subject"];
    self.window.rootViewController = tabBarController;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
