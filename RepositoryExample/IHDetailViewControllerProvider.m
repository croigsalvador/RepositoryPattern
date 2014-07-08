//
//  IHVCProvider.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 08/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "IHDetailViewControllerProvider.h"
#import "IHDetailViewController.h"

@implementation IHDetailViewControllerProvider

- (IHDetailViewController *)detailViewController {
    IHDetailViewController *detailViewController = [[IHDetailViewController alloc] init];
    return detailViewController;
}

@end
