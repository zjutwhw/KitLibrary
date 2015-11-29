//
//  BaseViewController.m
//  KitLibrary
//
//  Created by qinfei on 11/29/15.
//  Copyright © 2015 zjut.whw. All rights reserved.
//

#import "BaseViewController.h"

#define kDefaultKitCode  @"100000"
#define kDefaultKitName  @"BaseViewController"

@interface BaseViewController ()

@property (nonatomic, strong) NSString *kitDescription;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // do some thing....
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // post Data
    
    NSLog(@"%@",self.kitDescription);
    
}

- (NSString *)kitDescription
{
    if (!self.kitCode) {
        self.kitCode = kDefaultKitCode;
    }
    if (!self.kitName) {
        self.kitName = kDefaultKitName;
    }
    _kitDescription = [NSString stringWithFormat:@"%@.%@",self.kitCode,self.kitName];
    return _kitDescription;
}

- (void) clickBack
{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
