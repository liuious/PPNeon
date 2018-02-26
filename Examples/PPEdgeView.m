//
//  PPEdgeView.m
//  PPNeon
//
//  Created by silencedev on 12/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPEdgeView.h"

@interface PPEdgeView ()

@property (nonatomic, strong) UIView *AView;

@property (nonatomic, strong) UIView *ATopView;
@property (nonatomic, strong) UIView *ALeftView;
@property (nonatomic, strong) UIView *ABottomView;
@property (nonatomic, strong) UIView *ARightView;


@property (nonatomic, strong) UIView *BView;

@property (nonatomic, strong) UIView *BTopLeftView;
@property (nonatomic, strong) UIView *BTopRightView;
@property (nonatomic, strong) UIView *BBottomLeftView;
@property (nonatomic, strong) UIView *BBottomRightView;

@property (nonatomic, strong) UIView *CView;

@property (nonatomic, strong) UIView *CTopView;
@property (nonatomic, strong) UIView *CLeftView;
@property (nonatomic, strong) UIView *CBottomView;
@property (nonatomic, strong) UIView *CRightView;

- (void)p_initEdgeView;

@end

@implementation PPEdgeView

#pragma mark - Life Cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self p_initEdgeView];
    }
    return self;
}

- (void)dealloc {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.AView anchorToEdge:PPEdgeTop padding:160.0f width:200.0f height:200.0f];
//
//    [self.ATopView anchorToEdge:PPEdgeTop padding:10.0f width:50.0f height:50.0f];
//    [self.ALeftView anchorToEdge:PPEdgeLeft padding:10.0f width:50.0f height:50.0f];
//    [self.ABottomView anchorToEdge:PPEdgeBottom padding:10.0f width:50.0f height:50.0f];
//    [self.ARightView anchorToEdge:PPEdgeRight padding:10.0f width:50.0f height:50.0f];
    
//    [self.ATopView anchorToEdge:PPEdgeTop xPadding:20.0f yPadding:10.0f width:50.0f height:50.0f];
//    [self.ALeftView anchorToEdge:PPEdgeLeft xPadding:20.0f yPadding:10.0f width:50.0f height:50.0f];
//    [self.ABottomView anchorToEdge:PPEdgeBottom xPadding:20.0f yPadding:10.0f width:50.0f height:50.0f];
//    [self.ARightView anchorToEdge:PPEdgeRight xPadding:20.0f yPadding:10.0f width:50.0f height:50.0f];
    
    /////////////////////////////////////////////////////////////
    
//    [self.BView anchorInCenter:200.0f height:200.0f];
    [self.BView anchorToEdge:PPEdgeBottom padding:40.0f width:200.0f height:200.0f];
    
//    [self.BTopLeftView anchorInCorner:PPCornerTopLeft xPad:10.0f yPad:10.0f width:50.0f height:50.0f];
//    [self.BTopRightView anchorInCorner:PPCornerTopRight xPad:10.0f yPad:10.0f width:50.0f height:50.0f];
//    [self.BBottomLeftView anchorInCorner:PPCornerBottomLeft xPad:10.0f yPad:10.0f width:50.0f height:50.0f];
//    [self.BBottomRightView anchorInCorner:PPCornerBottomRight xPad:10.0f yPad:10.0f width:50.0f height:50.0f];
    
//    [self.BTopLeftView pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
//        edgeCorner.topLeft.xOffset(10).yOffset(20.0f).size(CGSizeMake(20.0f, 30.0f));
//    }];
    
    /////////////////////////////////////////////////////////////
    
//    [self.CView align:PPAlignUnderCentered relativeTo:self.BView padding:10.0f width:200.0f height:200.0f];
//    
//    [self.CTopView anchorAndFillEdge:PPEdgeTop xPad:40.0f yPad:40.0f otherSize:20.0f];
//    [self.CLeftView anchorAndFillEdge:PPEdgeLeft xPad:10.0f yPad:10.0f otherSize:20.0f];
//    [self.CBottomView anchorAndFillEdge:PPEdgeBottom xPad:40.0f yPad:40.0f otherSize:20.0f];
//    [self.CRightView anchorAndFillEdge:PPEdgeRight xPad:10.0f yPad:10.0f otherSize:20.0f];
}

#pragma mark - Private Method
- (void)p_initEdgeView {
    self.AView = [[UIView alloc] init];
    [self.AView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.AView];
    
    self.ATopView = [[UIView alloc] init];
    [self.ATopView setBackgroundColor:[UIColor redColor]];
    [self.AView addSubview:self.ATopView];
    
    self.ALeftView = [[UIView alloc] init];
    [self.ALeftView setBackgroundColor:[UIColor greenColor]];
    [self.AView addSubview:self.ALeftView];
    
    self.ABottomView = [[UIView alloc] init];
    [self.ABottomView setBackgroundColor:[UIColor blueColor]];
    [self.AView addSubview:self.ABottomView];
    
    self.ARightView = [[UIView alloc] init];
    [self.ARightView setBackgroundColor:[UIColor yellowColor]];
    [self.AView addSubview:self.ARightView];
    
    /////////////////////////////////////////////////////////////
    
    self.BView = [[UIView alloc] init];
    [self.BView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.BView];
    
    self.BTopLeftView = [[UIView alloc] init];
    [self.BTopLeftView setBackgroundColor:[UIColor redColor]];
    [self.BView addSubview:self.BTopLeftView];
    
    self.BTopRightView = [[UIView alloc] init];
    [self.BTopRightView setBackgroundColor:[UIColor greenColor]];
    [self.BView addSubview:self.BTopRightView];
    
    self.BBottomLeftView = [[UIView alloc] init];
    [self.BBottomLeftView setBackgroundColor:[UIColor blueColor]];
    [self.BView addSubview:self.BBottomLeftView];
    
    self.BBottomRightView = [[UIView alloc] init];
    [self.BBottomRightView setBackgroundColor:[UIColor yellowColor]];
    [self.BView addSubview:self.BBottomRightView];
    
    /////////////////////////////////////////////////////////////
    
    self.CView = [[UIView alloc] init];
    [self.CView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.CView];
    
    self.CTopView = [[UIView alloc] init];
    [self.CTopView setBackgroundColor:[UIColor redColor]];
    [self.CView addSubview:self.CTopView];
    
    self.CLeftView = [[UIView alloc] init];
    [self.CLeftView setBackgroundColor:[UIColor greenColor]];
    [self.CView addSubview:self.CLeftView];
    
    self.CBottomView = [[UIView alloc] init];
    [self.CBottomView setBackgroundColor:[UIColor blueColor]];
    [self.CView addSubview:self.CBottomView];
    
    self.CRightView = [[UIView alloc] init];
    [self.CRightView setBackgroundColor:[UIColor yellowColor]];
    [self.CView addSubview:self.CRightView];
}

@end
