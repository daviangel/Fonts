//
//  FontsAppDelegate.m
//  Fonts
//
//  Created by Jaime Moreno on 12/20/10.
//  Copyright 2010 Jologames. All rights reserved.
//

#import "FontsAppDelegate.h"

#import "FontsViewController.h"

@implementation FontsAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
     
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [viewController release];
    [super dealloc];
}

@end
