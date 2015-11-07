//
//  ConversationsViewController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ConversationsViewControllerDelegate

- (void)showStartScreen;

@end

@interface ConversationsViewController : UIViewController

@property (nonatomic, strong) id delegate;

- (IBAction)pressLogoutButton:(id)sender;

@end
