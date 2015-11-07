//
//  ConversationFlowController.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "StartViewController.h"

@interface ConversationFlowController : NSObject

+ (ConversationFlowController *)mainController;
- (void)initializeWithRootViewController:(UINavigationController *)vc;

@end
