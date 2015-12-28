//
//  SessionController.m
//  ASChatter
//
//  Created by Ashen on 15/12/25.
//  Copyright © 2015年 Ashen<https://github.com/Ashen-Zhao>. All rights reserved.
//

#import "SessionController.h"
#import "NIMKit.h"
#import "AFNetworking.h"

@interface SessionController ()

@end

@implementation SessionController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)sendMessage:(NIMMessage *)message {
    message.from = @"me";
    [self ASupdateCell:message];
    NSDictionary *dict = @{@"key":@"c9e30338a173b079ec502423bc93347b", @"info":message.text};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://www.tuling123.com/openapi/api" parameters:dict success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        NIMMessage *message = [[NIMMessage alloc] init];
        message.from = @"notme";
        message.text  = responseObject[@"text"];
        [self ASupdateCell:message];

    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        
    }];
}

@end
