//
//  IHViewController.h
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IHDownloadInteractor;
@class IHDetailViewControllerProvider;

@interface IHViewController : UIViewController

@property (nonatomic, strong, readonly) IHDownloadInteractor *downloadInteractor;
@property (nonatomic, strong, readonly) IHDetailViewControllerProvider *detailVCProvider;


-(instancetype)initWithDownloadInteractor:(IHDownloadInteractor *) downloadInteractor vcProvider:(IHDetailViewControllerProvider *) detailVCProvider;


-(instancetype)init __attribute__((unavailable));

@end
