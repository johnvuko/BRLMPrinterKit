//
//  BRLMViewController.m
//  BRLMPrinterKit
//
//  Created by Jonathan VUKOVICH on 08/11/2020.
//  Copyright (c) 2020 Jonathan VUKOVICH. All rights reserved.
//

#import "BRLMViewController.h"
#import <BRLMPrinterKit/BRLMPrinterKit.h>
#import <BRLMPrinterKit/BRPtouchBluetoothManager.h>

@interface BRLMViewController () {
    BRPtouchNetworkManager *_networkManager;
}

@end

@implementation BRLMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startDiscovery];
}

- (void)startDiscovery
{
    _networkManager = [BRPtouchNetworkManager new];
    _networkManager.delegate = self;
    int ret = [_networkManager startSearch:5];
    if (ret == RET_TRUE) {
        NSLog(@"startDiscovery succeed");
    }
    else {
        NSLog(@"startDiscovery failed");
    }
}

- (void)didFinishSearch:(BRPtouchNetworkManager *)manager {
    NSArray<BRPtouchDeviceInfo *> *devices = [manager getPrinterNetInfo];
    NSLog(@"Search finished, found %ld device(s)", devices.count);

    for (BRPtouchDeviceInfo *deviceInfo in devices) {
        NSLog(@"WIFI Model: %@, IP Address: %@, serialNumer: %@", deviceInfo.strModelName, deviceInfo.strIPAddress, deviceInfo.strSerialNumber);
    }
}

@end
