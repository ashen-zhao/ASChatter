//
//  ASDataProvider.m
//  ASChatter
//
//  Created by Ashen on 15/12/25.
//  Copyright © 2015年 Ashen<https://github.com/Ashen-Zhao>. All rights reserved.
//

#import "ASDataProvider.h"


@implementation ASDataProvider
- (NIMKitInfo *)infoByUser:(NSString *)userId{

    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
        //如果本地有数据则直接返回
    NIMKitInfo *info = [[NIMKitInfo alloc] init];
    info.infoId      = userId;
    info.showName    = user.userInfo.nickName.length ? user.userInfo.nickName : userId;
    info.avatarImage = [UIImage imageNamed:@"DefaultAvatar"];
    info.avatarUrlString = @"";
    return info;
}

@end
