//
//  JPSProtocolManager.m
//  JPSProtocolManager
//
//  Created by zjp on 2019/2/27.
//  Copyright © 2019年 Sunke. All rights reserved.
//

#import "JPSProtocolManager.h"

@interface JPSProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation JPSProtocolManager


+ (JPSProtocolManager *)sharedInstance
{
    static JPSProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}


@end
