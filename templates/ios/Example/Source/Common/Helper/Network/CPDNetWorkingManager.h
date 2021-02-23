//
//  CPDNetWorkingManager.h
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import <YKNetWorking.h>
#import "CPDURLAddressProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface CPDNetWorkingManager : YKNetWorking

@property (nonatomic,weak) id <CPDURLAddressProtocol> urlStringDelegate;

#pragma mark -- 统一处理异常的方法
- (HYBURLSessionTask *)syt_postWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
success:(HYBResponseSuccess)success ;

- (HYBURLSessionTask *)syt_getWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
success:(HYBResponseSuccess)success ;
 

#pragma mark -- 需要单独获取异常回调的方法


- (HYBURLSessionTask *)syt_postWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(HYBResponseSuccess)success
fail:(HYBResponseFail)fail ;


- (HYBURLSessionTask *)syt_getWithApiClass:(kSYTAPIClass)class
                                  ApiMethod:(kSYTAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(HYBResponseSuccess)success
fail:(HYBResponseFail)fail;


@end

NS_ASSUME_NONNULL_END
