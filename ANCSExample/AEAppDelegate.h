//
//  AEAppDelegate.h
//  ANCSExample
//
//  Created by Sandeep Mistry on 2013-10-08.
//  Copyright (c) 2013 Sandeep Mistry. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreBluetooth/CoreBluetooth.h>

@interface AEAppDelegate : UIResponder <UIApplicationDelegate, CBPeripheralManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CBPeripheralManager *peripheralManager;

@end
