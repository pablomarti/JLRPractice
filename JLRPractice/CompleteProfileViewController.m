//
//  CompleteProfileViewController.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "CompleteProfileViewController.h"

@interface CompleteProfileViewController ()

@end

@implementation CompleteProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressConversationsButton:(id)sender
{
    [self.delegate showConversationsScreen];
}
@end
