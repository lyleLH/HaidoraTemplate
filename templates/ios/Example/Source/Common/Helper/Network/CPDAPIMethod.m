//
//  CPDAPIMethod.m
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import "CPDAPIMethod.h"

@implementation CPDAPIMethod
 


+ (NSString *)apiServerUrlWithMockTag:(BOOL)isMock {
    NSString * serverString  = @"http://t-syt.lepass.cn/manager/";
    if(isMock){
        serverString = @"http://yapi.lepass.cn/mock/1831/manager/";
    }
    return serverString;
}



+ (NSString *)apiClassUrlWithAPIClass:(kSYTAPIClass) apiClass withMockTags:(BOOL)isMock {
    NSString * classString  = @"";
    switch (apiClass) {
        case kSYTAPIClass_SalesmanManage:
        {
            classString = @"v2/bd/";
        }
            break;
        case kSYTAPIClass_WechatCertifyManage:
        {
            classString = @"v2/weChat/";
        }
            break;
        case kSYTAPIClass_MerchanRateManage:
        {
            classString = @"merchant/fee/";
        }
            break;
        default:
            break;
    }
    return  [NSString stringWithFormat:@"%@%@",[self apiServerUrlWithMockTag:isMock] , classString];
}

 
 
+ (NSString *)apiMethodUrlWithAPIMethod:(kSYTAPIMethod)apiMethod   apiClass:(kSYTAPIClass)class   {
    return  [self apiMethodUrlWithAPIMethod:apiMethod apiClass:class withMockTags:NO];
}


+ (NSString *)apiMethodUrlWithAPIMethod:(kSYTAPIMethod)apiMethod   apiClass:(kSYTAPIClass)class  withMockTags:(BOOL)isMock {
    
    NSString * methodString  = @"";
    switch (apiMethod) {
            
#pragma --
#pragma -- mark -- 业务员管理-- Start
        case kSYTAPIMethod_SalesmanList:
        {
            methodString = @"list";
        }
            break;
        
        case kSYTAPIMethod_AddSalesman:
        {
            methodString = @"add";
        }
            break;
            
        case kSYTAPIMethod_SalesmanDetails:
        {
            methodString = @"detail";
        }
            break;
            
        case kSYTAPIMethod_EditSalesmanInfo:
        {
            methodString = @"updateBdBaseInfo";
        }
            break;
            
        case kSYTAPIMethod_EditSalesmanStatus:
        {
            methodString = @"updateBdStatus";
        }
            break;
            
            
        case kSYTAPIMethod_ChangeSalemanLoginPwd:
        {
            methodString = @"resetPassword";
        }
            break;
#pragma --
#pragma -- mark -- 业务员管理 -- end
            
#pragma --
#pragma -- mark -- 微信商户认证管理-- Start
        case kSYTAPIMethod_WechatCertifyMerchantList:
        {
            methodString = @"list";
        }
            break;
        case kSYTAPIMethod_MerchantWechatCertifyCode:
        {
            methodString = @"code";
        }
            break;
        case kSYTAPIMethod_MerchantApplyWechatCertify:
        {
            methodString = @"apply";
        }
            break;
        case kSYTAPIMethod_MerchantReApplyWechatCertify:
        {
            methodString = @"apply-again";
        }
            break;
        case kSYTAPIMethod_MerchantCancleWechatCertify:
        {
            methodString = @"cancel";
        }
            break;
        case kSYTAPIMethod_RefreshMerchantWechatCertifyStatus:
        {
            methodString = @"refresh";
        }
            break;
        case kSYTAPIMethod_IsMerchantCodeisBinded:
        {
            methodString = @"isExist";
        }
            break;
#pragma --
#pragma -- mark -- 微信商户认证管理-- end
        case kSYTAPIMethod_ReviewMerchanRate:
        {
            methodString = @"getMerchantFee";
        }
            break;
        case kSYTAPIMethod_ChangeMerchanRate:
        {
            methodString = @"updateMerchantFee";
        }
            break;
        default:
            break;
    }
    
    return  methodString = [NSString stringWithFormat:@"%@%@?%@",[self apiClassUrlWithAPIClass:class withMockTags:isMock],methodString,[SYTUntil saasDefaultParamters]];
    
}


+ (NSString *)apiMethodOfManageSalesmanUrlWithAPIMethod:(kSYTAPIMethod)apiMethod {
    return  [self apiMethodUrlWithAPIMethod:apiMethod apiClass:kSYTAPIClass_SalesmanManage];
}

+ (NSString *)mockApiMethodOfManageSalesmanUrlWithAPIMethod:(kSYTAPIMethod)apiMethod withMockTags:(BOOL)isMock {
    return  [self apiMethodUrlWithAPIMethod:apiMethod apiClass:kSYTAPIClass_SalesmanManage withMockTags:isMock];
}


+ (NSString *)apiMethodOfWechatMerchantCertifyUrlWithAPIMethod:(kSYTAPIMethod)apiMethod {
    return  [self apiMethodUrlWithAPIMethod:apiMethod apiClass:kSYTAPIClass_WechatCertifyManage];
}

@end
