//
//  InitialFlowControl.h
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InitialFlowControl : NSObject

+ (InitialFlowControl *)mainController;

- (void)initializeWithWindow:(UIWindow *)window launchOptions:(NSDictionary *)launchOptions;
- (void)initializeWithRootViewController:(UINavigationController *)vc;

@end
