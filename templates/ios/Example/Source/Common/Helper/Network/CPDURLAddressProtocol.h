//
//  CPDURLAddressProtocol.h
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPDAPIMethod.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CPDURLAddressProtocol <NSObject>

@required

- (NSString *)apiURLStringWithApiClass:(kSYTAPIClass)class andApiClass:(kSYTAPIMethod)method;


@end

NS_ASSUME_NONNULL_END
