//
//  ConversationsViewController.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "ConversationsViewController.h"

@interface ConversationsViewController ()

@end

@implementation ConversationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)pressLogoutButton:(id)sender
{
    [self.delegate showStartScreen];
}

@end
