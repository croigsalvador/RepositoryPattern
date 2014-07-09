//
//  IHAssembly.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 09/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "IHAssembly.h"
#import "IHDownloadInteractor.h"
#import "IHRepository.h"
#import "IHDetailViewControllerProvider.h"
#import "TyphoonMethod.h"
#import "IHViewController.h"

@implementation IHAssembly

- (id)viewController {
    
    return [TyphoonDefinition withClass:[IHViewController class] configuration:^(TyphoonDefinition* definition)
            {
                [definition useInitializer:@selector(initWithDownloadInteractor:vcProvider:) parameters:^(TyphoonMethod *initializer) {
                    //For more control, you can use injectParameterAtIndex, but probably just. . .
                    [initializer injectParameterWith:[self downloadInteractor]];
                    [initializer injectParameterWith:[self detailProvider]];
                    //. . . which means the order will follow that of the parameters in the selector.
                }];
            }];
}

- (id)downloadInteractor {
    return [TyphoonDefinition withClass:[IHDownloadInteractor class] configuration:^(TyphoonDefinition* definition)
            {
                [definition useInitializer:@selector(initWithRepository:) parameters:^(TyphoonMethod *initializer) {
                    //For more control, you can use injectParameterAtIndex, but probably just. . .
                    [initializer injectParameterWith:[self repository]];
                    //. . . which means the order will follow that of the parameters in the selector.
           }];
    }];
}

- (id)repository {
    return [TyphoonDefinition withClass:[IHRepository class]];
}
- (id)detailProvider {
    return [TyphoonDefinition withClass:[IHDetailViewControllerProvider class]];
}

@end
