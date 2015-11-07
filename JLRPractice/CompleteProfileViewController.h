//
//  CompleteProfileViewController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CompleteProfileViewControllerDelegate

- (void)showConversationsScreen;

@end

@interface CompleteProfileViewController : UIViewController

@property (nonatomic, strong) id delegate;

- (IBAction)pressConversationsButton:(id)sender;

@end
