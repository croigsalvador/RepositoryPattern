//
//  LRTVShowTest.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LRTVShow.h"

#define EXP_SHORTHAND
#import "Expecta.h"

@interface LRTVShowTest : XCTestCase

@property (strong, nonatomic)LRTVShow *sut;

@end

@implementation LRTVShowTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTVShowAttributes {
    NSDictionary *showDictionary = @{@"title" : @"titulo", @"overview" : @"myOverview", @"network" : @"myNetwork", @"premierDate": [NSDate date], @"tracktURL":[NSURL URLWithString:@"URL"], @"posterURL":[NSURL URLWithString:@"URL2"]};
    
    self.sut = [LRTVShow tvshowWithDictionary:showDictionary];
    
    expect(self.sut.title).to.equal(showDictionary[@"title"]);
    expect(self.sut.overview).to.equal(showDictionary[@"overview"]);
    expect(self.sut.network).to.equal(showDictionary[@"network"]);
//    expect(self.sut.premiereDate).to.equal(showDictionary[@"premierDate"]);
//    expect(self.sut.traktURL).to.equal(showDictionary[@"tracktURL"]);
//    expect(self.sut.posterURL).to.equal(showDictionary[@"posterURL"]);
}


@end
