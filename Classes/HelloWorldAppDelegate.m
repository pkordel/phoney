//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Peter Kördel on 2009-04-15.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "MyViewController.h"

@implementation HelloWorldAppDelegate

@synthesize window;
@synthesize myViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    MyViewController *aViewController = [[MyViewController alloc]
                                          initWithNibName:@"ControllerView" bundle:[NSBundle mainBundle]];
    self.myViewController = aViewController;
    [aViewController release];
    UIView *controllersView = [myViewController view];
    [window addSubview:controllersView];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [myViewController release];
    [window release];
    [super dealloc];
}


@end
