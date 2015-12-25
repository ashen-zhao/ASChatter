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

- (void)viewDidLoad {
    [super viewDidLoad];
    NIMSession *session = [NIMSession session:@"as001" type:NIMSessionTypeP2P];
    SessionController *sc = [[SessionController alloc] initWithSession:session];
    [self.navigationController pushViewController:sc animated:YES];
    
    [[NIMSDK sharedSDK].loginManager autoLogin:@"www" token:@"123456"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
