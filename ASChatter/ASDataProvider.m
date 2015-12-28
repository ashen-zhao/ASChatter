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

    if ([userId isEqualToString:@"me"]) {
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
        NIMKitInfo *info = [[NIMKitInfo alloc] init];
        info.infoId      = userId;
        info.showName    = user.userInfo.nickName.length ? user.userInfo.nickName : userId;
        info.avatarImage = [UIImage imageNamed:@"demo_avatar_cook"];
        return info;
    }
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
    NIMKitInfo *info = [[NIMKitInfo alloc] init];
    info.infoId      = userId;
    info.showName    = user.userInfo.nickName.length ? user.userInfo.nickName : userId;
    info.avatarImage = [UIImage imageNamed:@"demo_avatar_jobs"];
    return info;
}

@end
