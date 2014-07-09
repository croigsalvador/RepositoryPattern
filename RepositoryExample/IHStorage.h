//
//  IHStorage.h
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 09/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IHStorage <NSObject>

- (void)saveShows:(NSArray *)shows withCompletionBlock:(void(^)(BOOL success))completionBlock;
- (void)showsWithCompletionBlock:(void(^)(NSArray *shows, NSError *error))completionBlock;

@end
