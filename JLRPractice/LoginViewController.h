//
//  LoginViewController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerDelegate

@end

@interface LoginViewController : UIViewController

@property (nonatomic, strong) id delegate;

@end
