//
//  CPDAPIMethod.m
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import "CPDAPIMethod.h"

@implementation CPDAPIMethod
 
#pragma mark --
#pragma mark -- public
+ (NSString *)apiUrlWithAPIMethod:(kSYTAPIMethod)apiMethod   apiClass:(kSYTAPIClass)class   {
    NSString * methodString  = @"";
    switch (apiMethod) {
        case kSYTAPIMethod_SalesmanList:
        {
            methodString = @"list";
        }
            break;
        default:
            break;
    }
    return  methodString = [NSString stringWithFormat:@"%@%@?%@",[self apiClassUrlWithAPIClass:class],methodString,[self commanURLParameters]];
}



#pragma mark --
#pragma mark -- private

//每个接口都需要带有的参数
+ (NSString *)commanURLParameters {
//    [SYTUntil saasDefaultParamters]
    return @"";
}


+ (NSString *)apiServerUrl {
    NSString * serverString  = @"http://t-syt.lepass.cn/manager/";
//    if(isMock){
//        serverString = @"http://yapi.lepass.cn/mock/1831/manager/";
//    }
    return serverString;
}



+ (NSString *)apiClassUrlWithAPIClass:(kSYTAPIClass) apiClass   {
    NSString * classString  = @"";
    switch (apiClass) {
        case kSYTAPIClass_SalesmanManage:
        {
            classString = @"v2/bd/";
        }
            break;
        default:
            break;
    }
    return  [NSString stringWithFormat:@"%@%@",[self apiServerUrl], classString];
}

@end
