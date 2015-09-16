//
//  CPDLoginViewController.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDLoginViewController.h"
#import "CPDLoginViewModel.h"

@interface CPDLoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@property (nonatomic, strong) CPDLoginViewModel *viewModel;

@end

@implementation CPDLoginViewController

#pragma mark
#pragma mark Init

#pragma mark
#pragma mark Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self prepareForData];
    [self prepareForView];
    [self prepareForAction];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark
#pragma mark PrepareConfig

- (void)prepareForData
{
    self.viewModel = [[CPDLoginViewModel alloc] init];
}

- (void)prepareForView
{
}

- (void)prepareForAction
{
}

#pragma mark
#pragma mark XXXDelegate

#pragma mark
#pragma mark Event Response

- (IBAction)loginAction:(id)sender
{
    if (self.userName.text.length > 0 && self.passWord.text.length > 0)
    {
    }
}

#pragma mark
#pragma mark Getter/Setter

@end
