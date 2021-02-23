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
    kSYTAPIClass_WechatCertifyManage,
    kSYTAPIClass_MerchanRateManage,
};

typedef NS_ENUM(NSUInteger, kSYTAPIMethod) {
    kSYTAPIMethod_SalesmanList,
    kSYTAPIMethod_AddSalesman,
    kSYTAPIMethod_SalesmanDetails,
    kSYTAPIMethod_EditSalesmanInfo,
    kSYTAPIMethod_EditSalesmanStatus,
    kSYTAPIMethod_ChangeSalemanLoginPwd,
    kSYTAPIMethod_WechatCertifyMerchantList,//认证列表
    kSYTAPIMethod_MerchantWechatCertifyCode,//认证二维码
    kSYTAPIMethod_MerchantApplyWechatCertify,//认证申请
    kSYTAPIMethod_MerchantReApplyWechatCertify,//再次/重复认证申请
    kSYTAPIMethod_MerchantCancleWechatCertify,//撤销认证申请
    kSYTAPIMethod_RefreshMerchantWechatCertifyStatus,//认证刷新
    kSYTAPIMethod_IsMerchantCodeisBinded,//查询是否已绑定
    kSYTAPIMethod_ReviewMerchanRate,
    kSYTAPIMethod_ChangeMerchanRate,
};


@interface CPDAPIMethod : NSObject



#pragma mark ---- 业务员管理

//获取mock数据
+ (NSString *)mockApiMethodOfManageSalesmanUrlWithAPIMethod:(kSYTAPIMethod)apiMethod withMockTags:(BOOL)isMock ;

//获取真实环境的数据
+ (NSString *)mockApiMethodOfManageSalesmanUrlWithAPIMethod:(kSYTAPIMethod)apiMethod;

#pragma mark ---- 微信商户认证 管理
+ (NSString *)apiMethodOfWechatMerchantCertifyUrlWithAPIMethod:(kSYTAPIMethod)apiMethod;

@end

NS_ASSUME_NONNULL_END
