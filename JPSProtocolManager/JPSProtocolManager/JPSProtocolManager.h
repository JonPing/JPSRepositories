//
//  JPSProtocolManager.h
//  JPSProtocolManager
//
//  Created by zjp on 2019/2/27.
//  Copyright © 2019年 Sunke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPSProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
