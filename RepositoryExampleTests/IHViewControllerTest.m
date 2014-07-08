//
//  IHIHViewControllerTest.m
//  RepositoryExample
//
//  Created by Carlos Roig Salvador on 08/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IHViewController.h"
#import "IHRepository.h"
#import "IHDownloadInteractor.h"
#import "IHDetailViewControllerProvider.h"
#import "IHViewController_PublicTest.h"
#import "IHDetailViewController.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

@interface IHViewControllerDouble : IHViewController

@property (strong,nonatomic) UINavigationController *mockNavigationController;

@end

@implementation IHViewControllerDouble

- (UINavigationController *)navigationController {
    return self.mockNavigationController;
}

@end

@interface IHViewControllerTest : XCTestCase

@property (strong,nonatomic) IHViewControllerDouble *sut;

@end

@implementation IHViewControllerTest{
    IHDownloadInteractor *_mockInteractor;
    IHDetailViewControllerProvider *_mockDetailViewControllerProvider;
}

- (void)setUp
{
    [super setUp];
    
    _mockInteractor = mock([IHDownloadInteractor class]);
    _mockDetailViewControllerProvider = mock([IHDetailViewControllerProvider class]);
    
    
    self.sut = [[IHViewControllerDouble alloc] initWithDownloadInteractor:_mockInteractor vcProvider:_mockDetailViewControllerProvider];
    
    self.sut.mockNavigationController = mock([UINavigationController class]);
    [self.sut view];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDownloadTVShowsInInteractorWorks {
    [verify(_mockInteractor) download];
}

- (void)testButtonPressedPushNewViewController {
    IHDetailViewController *detailViewController = mock([IHDetailViewController class]);
    [given([_mockDetailViewControllerProvider detailViewController]) willReturn:detailViewController];
    
    [self.sut btnAction];
    [verify(self.sut.mockNavigationController) pushViewController:detailViewController animated:NO];
}






@end
