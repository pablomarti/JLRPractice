//
//  ConversationFlowController.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "ConversationFlowController.h"
#import "InitialFlowControl.h"
#import "ConversationsViewController.h"

@interface ConversationFlowController() <ConversationsViewControllerDelegate>

@property (nonatomic, strong) ConversationsViewController *mainViewController;

@end

@implementation ConversationFlowController

+ (ConversationFlowController *)mainController
{
    static ConversationFlowController *mainController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mainController = [ConversationFlowController new];
    });
    return mainController;
}

- (void)initializeWithRootViewController:(UINavigationController *)vc
{
    self.mainViewController = [[ConversationsViewController alloc] initWithNibName:@"ConversationsViewController" bundle:nil];
    self.mainViewController.delegate = self;
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray: @[self.mainViewController]];
    [vc setViewControllers:viewControllers animated:YES];
}

#pragma mark - ConversationsViewControllerDelegate methods

- (void)showStartScreen
{
    NSURL *viewUserURL = [NSURL URLWithString:@"myapp://flowcontrollers/initial"];
    [[UIApplication sharedApplication] openURL:viewUserURL];
}

@end
