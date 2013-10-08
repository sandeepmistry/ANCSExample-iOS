//
//  AEAppDelegate.m
//  ANCSExample
//
//  Created by Sandeep Mistry on 2013-10-08.
//  Copyright (c) 2013 Sandeep Mistry. All rights reserved.
//

#import "AEAppDelegate.h"

@implementation AEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.peripheralManager = [[CBPeripheralManager alloc] initWithDelegate:self queue:nil];
    
    return YES;
}

- (void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral
{
    if (peripheral.state == CBPeripheralManagerStatePoweredOn) {
        [self.peripheralManager startAdvertising:@{
                                                   CBAdvertisementDataLocalNameKey: [[UIDevice currentDevice] name]
                                                   }];
    } else {
        [self.peripheralManager stopAdvertising];
    }
}

@end
