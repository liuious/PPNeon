//
//  PPTestView.m
//  PPNeon
//
//  Created by silencedev on 13/07/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPTestView.h"

@interface PPTestView ()

@property (nonatomic, strong) UIView *fatherView;

@property (nonatomic, strong) UIView *sub1View;
@property (nonatomic, strong) UIView *sub2View;
@property (nonatomic, strong) UIView *sub3View;

- (void)p_initSubViews;
- (void)p_layout;

@end

@implementation PPTestView

#pragma mark - Life Cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self p_initSubViews];
    }
    return self;
}

- (void)dealloc {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self p_layout];
}

#pragma mark - Private Mehtod
- (void)p_initSubViews {
    [self addSubview:self.fatherView];
    
    [self.fatherView addSubview:self.sub1View];
    [self.fatherView addSubview:self.sub2View];
    [self.fatherView addSubview:self.sub3View];
}

- (void)p_layout {
    [self.fatherView anchorInCenter:300.0f height:50.0f];
    
    [self.sub1View pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
        edgeCorner.topLeft.xOffset(10.0f).yOffset(-30.0f).width(50.0f).height(100.0f);
    }];
}

#pragma mark - Setter & Getter
- (UIView *)fatherView {
    if (_fatherView) return _fatherView;
    _fatherView = [[UIView alloc] init];
    [_fatherView setBackgroundColor:[UIColor grayColor]];
    return _fatherView;
}

- (UIView *)sub1View {
    if (_sub1View) return _sub1View;
    _sub1View = [[UIView alloc] init];
    [_sub1View setBackgroundColor:[UIColor redColor]];
    return _sub1View;
}

- (UIView *)sub2View {
    if (_sub2View) return _sub2View;
    _sub2View = [[UIView alloc] init];
    [_sub2View setBackgroundColor:[UIColor greenColor]];
    return _sub2View;
}

- (UIView *)sub3View {
    if (_sub3View) return _sub3View;
    _sub3View = [[UIView alloc] init];
    [_sub3View setBackgroundColor:[UIColor yellowColor]];
    return _sub3View;
}

@end
