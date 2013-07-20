//
//  SRRAppDelegate.m
//  make-up project
//
//  Created by owen on 13-6-16.
//  Copyright (c) 2013年 owen. All rights reserved.
//

#import "SRRAppDelegate.h"
#import "SRRViewController.h"
#import "SortViewController.h"
#import "HotPageViewController.h"
#import "LoveViewController.h"
#import "SetPageViewController.h"


@implementation SRRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //创建两个子视图控制器对象
    SRRViewController *SRVC=[[SRRViewController alloc]init];
    SRVC.tabBarItem.image=[UIImage imageNamed:@"huodong"];
    SRVC.tabBarItem.title=@"主页";

    SortViewController *SSVC=[[SortViewController alloc]init];
    SSVC.tabBarItem.image =[UIImage imageNamed:@" fenlei"];
    SSVC.tabBarItem.title=@"分类";
//    UIViewController *SSVC = [[SortViewController alloc]initWithNibName:@"SortViewController" bundle:nil];
//    SSVC.tabBarItem.image =[UIImage imageNamed:@"Star On"];
//    SSVC.tabBarItem.title=@"分类";

    
    HotPageViewController *HOVC=[[HotPageViewController alloc]init];
    HOVC.tabBarItem.image = [UIImage imageNamed:@"Star On"];
    HOVC.tabBarItem.title=@"热门";
    
    LoveViewController *LOVC=[[LoveViewController alloc]init];
    LOVC.tabBarItem.image =[UIImage imageNamed:@"Love"];
    LOVC.tabBarItem.title=@"喜爱";
    
    SetPageViewController *SPVC=[[SetPageViewController alloc]init];
    SPVC.tabBarItem.image = [UIImage imageNamed:@"Cog"];
    SPVC.tabBarItem.title=@"设置";
    
    
    //把自己的两个视图控制器，改变成可以导航的控制器，包装模式
    UINavigationController *SRNav=[[UINavigationController alloc]initWithRootViewController:SRVC];
    
    //UINavigationController *SSNav=[[UINavigationController alloc]initWithRootViewController:SSVC];
    UINavigationController *SSNav=[[UINavigationController alloc]initWithRootViewController:SSVC];
    
    UINavigationController *HONav=[[UINavigationController alloc]initWithRootViewController:HOVC];
    UINavigationController *LONav=[[UINavigationController alloc]initWithRootViewController:LOVC];
    UINavigationController *SPNav=[[UINavigationController alloc]initWithRootViewController:SPVC];
   
    
    //把SSNav，HHNav生成一个数组，赋值给 tabbarVC.viewControllers
    UITabBarController *tabbarVC=[[UITabBarController alloc]init];
    tabbarVC.viewControllers=[NSArray arrayWithObjects:SRNav,SSNav,HONav,LONav,SPNav, nil];
   
    
    //设置 tabbarVC  为winddow的rootViewController
    self.window.rootViewController=tabbarVC;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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














