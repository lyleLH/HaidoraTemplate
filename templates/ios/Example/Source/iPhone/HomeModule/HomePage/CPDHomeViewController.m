//
//  CPDHomeViewController.m
//  PROJECT
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 PROJECT_OWNER. All rights reserved.
//

#import "CPDHomeViewController.h"

@interface CPDHomeViewController ()

@end

@implementation CPDHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}


- (IBAction)pushToNextPage:(id)sender {
    UIViewController * vc = [[UIViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
