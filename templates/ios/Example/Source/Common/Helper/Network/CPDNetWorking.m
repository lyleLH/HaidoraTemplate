//
//  CPDNetWorking.m
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import "CPDNetWorking.h"

@implementation CPDNetWorking
+ (YKURLSessionTask *)postWithApiClass:(kCPDAPIClass)class
                                  ApiMethod:(kCPDAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
                                     success:(YKResponseSuccess)success  {
    return [self postWithApiClass:class ApiMethod:method refreshCache:refreshCache params:params success:success fail:^(NSError *error) {
//        [MBProgressHUD hideHUD];
//        [MBProgressHUD showErrorMessage:@"请求失败"];
    }];
}

+ (YKURLSessionTask *)postWithApiClass:(kCPDAPIClass)class
                                  ApiMethod:(kCPDAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(YKResponseSuccess)success
                                       fail:(YKResponseFail)fail {
    NSString * url = nil;
//    NSString * url = [SYTAPIMethod apiMethodUrlWithAPIMethod:method apiClass:class];
    
    return [self postWithUrl:url
                refreshCache:refreshCache
                      params:params
                    progress:nil
                     success:success
                       fail:fail];
}

 
+ (YKURLSessionTask *)getWithApiClass:(kCPDAPIClass)class
                                  ApiMethod:(kCPDAPIMethod)method
                                refreshCache:(BOOL)refreshCache
                                      params:(NSDictionary *)params
                                     success:(YKResponseSuccess)success  {
    return [self getWithApiClass:class ApiMethod:method refreshCache:refreshCache params:params success:success fail:^(NSError *error) {
//        [MBProgressHUD hideHUD];
//        [MBProgressHUD showErrorMessage:@"请求失败"];
    }];
}

+ (YKURLSessionTask *)getWithApiClass:(kCPDAPIClass)class
                                  ApiMethod:(kCPDAPIMethod)method
                               refreshCache:(BOOL)refreshCache
                                     params:(NSDictionary *)params
                                    success:(YKResponseSuccess)success
                                       fail:(YKResponseFail)fail {
    NSString * url = nil;
    
//    NSString * url = [SYTAPIMethod apiMethodUrlWithAPIMethod:method apiClass:class];
    
    return [self getWithUrl:url
                refreshCache:refreshCache
                      params:params
                    progress:nil
                     success:success
                       fail:fail];
}


@end
