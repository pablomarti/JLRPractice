//
//  StartViewController.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "StartViewController.h"

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)pressLoginButton:(id)sender
{
    [self.delegate showLoginScreen];
}

- (IBAction)pressSignUpButton:(id)sender
{
    [self.delegate showSignUpScreen];
}

@end
