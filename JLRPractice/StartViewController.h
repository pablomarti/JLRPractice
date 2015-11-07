//
//  StartViewController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StartViewControllerDelegate

- (void)showLoginScreen;
- (void)showSignUpScreen;

@end

@interface StartViewController : UIViewController

@property (nonatomic, strong) id delegate;

- (IBAction)pressLoginButton:(id)sender;
- (IBAction)pressSignUpButton:(id)sender;

@end
