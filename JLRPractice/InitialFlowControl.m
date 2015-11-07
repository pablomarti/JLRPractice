//
//  InitialFlowControl.m
//  JLRPractice
//
//  Created by Pablo on 11/5/15.
//  Copyright © 2015 CRU. All rights reserved.
//

#import "InitialFlowControl.h"
#import "StartViewController.h"
#import "SignUpViewController.h"
#import "LoginViewController.h"
#import "CompleteProfileViewController.h"
#import "ConversationFlowController.h"

@interface InitialFlowControl()<StartViewControllerDelegate, SignUpViewControllerDelegate, CompleteProfileViewControllerDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) StartViewController *mainViewController;

@end

@implementation InitialFlowControl

+ (InitialFlowControl *)mainController
{
    static InitialFlowControl *mainController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mainController = [InitialFlowControl new];
    });
    return mainController;
}

- (void)initializeWithWindow:(UIWindow *)window launchOptions:(NSDictionary *)launchOptions
{
    self.window = window;
    
    self.mainViewController = [[StartViewController alloc] initWithNibName:@"StartViewController" bundle:nil];
    self.mainViewController.delegate = self;
    
    if (self.mainViewController) {
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.mainViewController];
        self.window.rootViewController = navController;
    }
}

- (void)initializeWithRootViewController:(UINavigationController *)vc
{
    self.mainViewController = [[StartViewController alloc] initWithNibName:@"StartViewController" bundle:nil];
    self.mainViewController.delegate = self;
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray: @[self.mainViewController]];
    [vc setViewControllers:viewControllers animated:YES];
}

#pragma mark - StartViewControllerDelegate

- (void)showLoginScreen
{
    LoginViewController *vc = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    NSMutableArray *viewControllers = [NSMutableArray arrayWithArray:[[self.mainViewController navigationController] viewControllers]];
    if ([[viewControllers lastObject] isKindOfClass:[StartViewController class]])
    {
        [self.mainViewController.navigationController pushViewController:vc animated:YES];
    }
    else
    {
        [viewControllers removeLastObject];
        [viewControllers addObject:vc];
        [[self.mainViewController navigationController] setViewControllers:viewControllers animated:YES];
    }
}

- (void)showSignUpScreen
{
    SignUpViewController *vc = [[SignUpViewController alloc] initWithNibName:@"SignUpViewController" bundle:nil];
    vc.delegate = self;
    [self.mainViewController.navigationController pushViewController:vc animated:YES];
}

#pragma mark - SignUpViewControllerDelegate

- (void)showNextScreen
{
    CompleteProfileViewController *vc = [[CompleteProfileViewController alloc] initWithNibName:@"CompleteProfileViewController" bundle:nil];
    vc.delegate = self;
    [self.mainViewController.navigationController pushViewController:vc animated:YES];
}

#pragma mark - CompleteProfileViewControllerDelegate

- (void)showConversationsScreen
{
    NSURL *viewUserURL = [NSURL URLWithString:@"myapp://flowcontrollers/conversation"];
    [[UIApplication sharedApplication] openURL:viewUserURL];
}

@end
