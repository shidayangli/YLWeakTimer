//
//  AppDelegate.m
//  YLWeakTimer
//
//  Created by 杨立 on 2017/6/14.
//  Copyright © 2017年 BigCompany. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
#pragma clang diagnostic pop
{
    // Override point for customization after application launch.
    return YES;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (void)applicationWillResignActive:(UIApplication *)application
#pragma clang diagnostic pop
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (void)applicationDidEnterBackground:(UIApplication *)application
#pragma clang diagnostic pop
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (void)applicationWillEnterForeground:(UIApplication *)application
#pragma clang diagnostic pop
{
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (void)applicationDidBecomeActive:(UIApplication *)application
#pragma clang diagnostic pop
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-parameter"
- (void)applicationWillTerminate:(UIApplication *)application
#pragma clang diagnostic pop
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
