//
//  AppDelegate.m
//  iOS7-TableTopSeparatorDemo
//
//  Created by Yasuhiro Inami on 2013/11/28.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import "AppDelegate.h"
#import "UITableView+iOS7TableTopSeparator.h"

#define INSTALL_ALL         1

#define NO_SEPARATOR_INSET  1


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#if INSTALL_ALL
    [UITableView installIOS7TableTopSeparator];
#else
    UINavigationController* navC = (id)self.window.rootViewController;
    UITableViewController* tableVC = (id)navC.topViewController;
    tableVC.tableView.showsIOS7TopSeparator = YES;
#endif
    
#if NO_SEPARATOR_INSET
    [[UITableView appearance] setSeparatorInset:UIEdgeInsetsZero];
#endif
    
    return YES;
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
