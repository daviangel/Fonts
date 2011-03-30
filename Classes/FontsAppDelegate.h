//
//  FontsAppDelegate.h
//  Fonts
//
//  Created by Jaime Moreno on 12/20/10.
//  Copyright 2010 Jologames. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FontsViewController;

@interface FontsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FontsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FontsViewController *viewController;

@end
