//
//  IHAssembly.h
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 09/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "TyphoonAssembly.h"

@class IHDownloadInteractor, IHRepository, IHDetailViewControllerProvider;

@interface IHAssembly : TyphoonAssembly

- (id)downloadInteractor;
- (id)repository;
- (id)detailProvider;


@end
