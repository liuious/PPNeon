//
//  PPAnimationView.m
//  PPNeon
//
//  Created by silencedev on 16/4/14.
//  Copyright © 2016年 silencedev. All rights reserved.
//

#import "PPAnimationView.h"

@interface PPAnimationView ()

@property (nonatomic, strong) UIView * containerView;
@property (nonatomic, strong) UIView * redView;
@property (nonatomic, strong) UIView * greenView;
@property (nonatomic, strong) UIView * blueView;
@property (nonatomic, assign) CGFloat padding;

@end

@implementation PPAnimationView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self _initSubViews];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [_containerView fillSuperview:10.0f right:10.0f top:75.0f bottom:10.0f];
    [self _layoutViews];
}

- (void)didMoveToWindow {
    [self _animateWithMargins:YES];
}

#pragma mark - private method
- (void)_initSubViews {
    _containerView = [[UIView alloc] init];
    [_containerView setBackgroundColor:[UIColor whiteColor]];
    [_containerView setClipsToBounds:YES];
    [_containerView setPreservesSuperviewLayoutMargins:YES];
    [self setPreservesSuperviewLayoutMargins:YES];
    [self addSubview:_containerView];
    
    _redView = [[UIView alloc] init];
    [_redView setBackgroundColor:[UIColor redColor]];
    _redView.preservesSuperviewLayoutMargins = YES;
    [self.containerView addSubview:_redView];
    
    _greenView = [[UIView alloc] init];
    [_greenView setBackgroundColor:[UIColor greenColor]];
    [self.containerView addSubview:_greenView];
    
    _blueView = [[UIView alloc] init];
    [_blueView setBackgroundColor:[UIColor blueColor]];
    [self.containerView addSubview:_blueView];
}

- (void)_animateWithMargins:(BOOL)isMargins {
    self.padding = isMargins ? 1 : 0.5;
    [UIView animateWithDuration:1.0f delay:0.1f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [self _layoutViews];
    } completion:^(BOOL finished) {
        [self _animateWithMargins:!isMargins];
    }];
}

- (void)_layoutViews {
    [_containerView groupAgainstEdge:PPGroupHorizontal views:@[_redView, _greenView] againstEdge:PPEdgeTop padding:0.0f width:(_containerView.width / 2) * self.padding height:(_containerView.height / 2) * self.padding];

    [_blueView anchorToEdge:PPEdgeBottom padding:0.0f width:_containerView.width * self.padding height:(_containerView.height / 2) * self.padding];
}

@end
