//
//  CPDAPIMethod.h
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, kSYTAPIClass) {
    kSYTAPIClass_SalesmanManage,
     
};

typedef NS_ENUM(NSUInteger, kSYTAPIMethod) {
    kSYTAPIMethod_SalesmanList,
    
};


@interface CPDAPIMethod : NSObject

//根据 kSYTAPIClass 和 kSYTAPIMethod 来得到URL字符串
+ (NSString *)apiUrlWithAPIMethod:(kSYTAPIMethod)apiMethod   apiClass:(kSYTAPIClass)class;

@end

NS_ASSUME_NONNULL_END
