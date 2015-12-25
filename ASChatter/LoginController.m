//
//  LoginController.m
//  ASChatter
//
//  Created by Ashen on 15/12/25.
//  Copyright © 2015年 Ashen<https://github.com/Ashen-Zhao>. All rights reserved.
//

#import "LoginController.h"
#import "NIMKit.h"
#import "SessionController.h"


@interface LoginController ()

@end

@implementation LoginController
- (IBAction)justChatting:(id)sender {
    NIMSession *session = [NIMSession session:@"与库克的聊天" type:NIMSessionTypeP2P];
    SessionController *sc = [[SessionController alloc] initWithSession:session];
    [self.navigationController pushViewController:sc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
