//
//  SignUpViewController.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad
{
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

- (IBAction)pressNextButton:(id)sender
{
    [self.delegate showNextScreen];
}

@end
