//
//  CPDNetWorking.h
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPDAPIMethod.h"
#import <YKNetWorking/YKNetWorking.h>
NS_ASSUME_NONNULL_BEGIN

@interface CPDNetWorking : YKNetWorking

#pragma mark -- 统一处理异常的方法 ,不会将Error返回给上层
+ (YKURLSessionTask *)postWithApiClass:(kCPDAPIClass)class
                             ApiMethod:(kCPDAPIMethod)method
                          refreshCache:(BOOL)refreshCache
                                params:(NSDictionary *)params
                               success:(YKResponseSuccess)success ;

+ (YKURLSessionTask *)getWithApiClass:(kCPDAPIClass)class
                            ApiMethod:(kCPDAPIMethod)method
                         refreshCache:(BOOL)refreshCache
                               params:(NSDictionary *)params
                              success:(YKResponseSuccess)success ;
 

#pragma mark -- 单独获取异常


+ (YKURLSessionTask *)postWithApiClass:(kCPDAPIClass)class
                             ApiMethod:(kCPDAPIMethod)method
                          refreshCache:(BOOL)refreshCache
                                params:(NSDictionary *)params
                               success:(YKResponseSuccess)success
                                  fail:(YKResponseFail)fail ;


+ (YKURLSessionTask *)getWithApiClass:(kCPDAPIClass)class
                            ApiMethod:(kCPDAPIMethod)method
                         refreshCache:(BOOL)refreshCache
                               params:(NSDictionary *)params
                              success:(YKResponseSuccess)success
                                 fail:(YKResponseFail)fail;

@end

NS_ASSUME_NONNULL_END
