//
//  MainViewController.m
//  SBSAnimoji
//
//  Created by Simon Støvring on 05/11/2017.
//  Copyright © 2017 SimonBS. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
#import "AVTAnimoji.h"
#import "AVTRecordView.h"
 
@interface MainViewController ()
@property (nonatomic, readonly) MainView *contentView;
@end

@implementation MainViewController

// Pragma mark: - Lifecycle

- (instancetype)init {
    if (self = [super init]) {
        self.title = NSLocalizedString(@"MAIN_TITLE", @"");
    }
    return self;
}

- (MainView *)contentView {
    return (MainView *)self.view;
}

- (void)loadView {
    self.view = [[MainView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showPuppetNamed:@"mrsquare"];
}

// Pragma mark: - Private

- (void)showPuppetNamed:(NSString *)puppetName {
    //AVTAnimoji *puppet = [AVTAnimoji puppetNamed:puppetName options:nil];
    AVTAnimoji *puppet = [AVTAnimoji animojiNamed:puppetName];
    //AVTAvatarInstance *avatarInstance = (AVTAvatarInstance *)puppet;
    self.contentView.puppetView.avatar = puppet;
}

@end
