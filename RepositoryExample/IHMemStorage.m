//
//  IHMemStorage.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 09/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "IHMemStorage.h"

@interface IHMemStorage ()

@property (copy,nonatomic) NSArray * showsArray;

@end

@implementation IHMemStorage

- (void)saveShows:(NSArray *)shows withCompletionBlock:(void (^)(BOOL))completionBlock {
    self.showsArray = shows;
    completionBlock(YES);
}

- (void)showsWithCompletionBlock:(void (^)(NSArray *, NSError *))completionBlock {
    completionBlock(self.showsArray, nil);
}

@end
