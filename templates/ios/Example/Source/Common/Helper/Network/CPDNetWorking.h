//
//  CPDNetWorking.h
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPDAPIMethod.h"
NS_ASSUME_NONNULL_BEGIN

@interface CPDNetWorking : NSObject

#pragma mark -- 统一处理异常的方法 ,不会将Error返回给上层
+ (HYBURLSessionTask *)syt_postWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
success:(HYBResponseSuccess)success ;

+ (HYBURLSessionTask *)syt_getWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
success:(HYBResponseSuccess)success ;
 

#pragma mark -- 单独获取异常


+ (HYBURLSessionTask *)syt_postWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(HYBResponseSuccess)success
fail:(HYBResponseFail)fail ;


+ (HYBURLSessionTask *)syt_getWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(HYBResponseSuccess)success
fail:(HYBResponseFail)fail;

@end

NS_ASSUME_NONNULL_END
