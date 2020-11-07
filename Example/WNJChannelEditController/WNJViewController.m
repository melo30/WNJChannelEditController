//
//  WNJViewController.m
//  WNJChannelEditController
//
//  Created by melo30 on 11/06/2020.
//  Copyright (c) 2020 melo30. All rights reserved.
//

#import "WNJViewController.h"
#import "WNJChannelEditController.h"

@interface WNJViewController ()

@end

@implementation WNJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    WNJChannelEditController *channelEdit = [[WNJChannelEditController alloc] initWithTopDataSource:nil andBottomDataSource:nil andInitialIndex:3];
    [self presentViewController:channelEdit animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
