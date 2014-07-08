//
//  IHViewController.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "IHViewController.h"
#import "IHDownloadInteractor.h"
#import "IHDetailViewControllerProvider.h"
#import "IHDetailViewController.h"
#import "IHViewController_PublicTest.h"

@interface IHViewController ()


@end

@implementation IHViewController

-(instancetype)initWithDownloadInteractor:(IHDownloadInteractor *) downloadInteractor vcProvider:(IHDetailViewControllerProvider *) detailVCProvider
{
    if (self = [super init]) {
        _downloadInteractor = downloadInteractor;
        _detailVCProvider = detailVCProvider;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self.downloadInteractor download];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(75, 175, 200, 14)];
    [btn setTitle:@"View Detail" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnAction {
    IHDetailViewController *detailViewController = [self.detailVCProvider detailViewController];
    [self.navigationController pushViewController:detailViewController animated:NO];
}

@end
