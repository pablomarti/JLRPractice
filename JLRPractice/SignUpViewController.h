//
//  SignUpViewController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SignUpViewControllerDelegate

- (void)showNextScreen;
- (void)showLoginScreen;

@end

@interface SignUpViewController : UIViewController

@property (nonatomic, strong) id delegate;

- (IBAction)pressLoginButton:(id)sender;
- (IBAction)pressNextButton:(id)sender;


@end
