//
//  PPLinkTestView.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPLinkTestView.h"

@interface PPLinkTestView ()

@property (nonatomic, strong) UIView *vRed;
@property (nonatomic, strong) UIView *vYellow;

- (void)p_initLinkTestView;

@end

@implementation PPLinkTestView

#pragma mark - Life Cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self p_initLinkTestView];
    }
    return self;
}

- (void)dealloc {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.vRed setFrame:CGRectMake(100, 100, 100, 100)];
    [self.vYellow setFrame:CGRectMake(100, 500, 100, 100)];
    [self.vYellow pp_neonMakeAlign:^(PPNeonAlign *align) {
        align.above(self.vRed).xOffset(100);
    }];
}

#pragma mark - Private Method
- (void)p_initLinkTestView {
    self.vRed = [[UIView alloc] init];
    [self.vRed setBackgroundColor:[UIColor redColor]];
    [self addSubview:self.vRed];
    
    self.vYellow = [[UIView alloc] init];
    [self.vYellow setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.vYellow];
}

@end
