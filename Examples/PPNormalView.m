//
//  PPNormalView.m
//  PPNeon
//
//  Created by silencedev on 16/4/14.
//  Copyright © 2016年 silencedev. All rights reserved.
//

#import "PPNormalView.h"

@interface PPNormalView ()

@property (nonatomic, strong) UIView * containerView;
@property (nonatomic, strong) UILabel * label1;
@property (nonatomic, strong) UILabel * label2;
@property (nonatomic, strong) UILabel * label3;
@property (nonatomic, strong) UILabel * label4;
@property (nonatomic, strong) UILabel * label5;
@property (nonatomic, strong) UILabel * label6;
@property (nonatomic, strong) UILabel * label7;
@property (nonatomic, strong) UILabel * label8;
@property (nonatomic, strong) UILabel * label9;
@property (nonatomic, strong) UILabel * label10;

@property (nonatomic, strong) UIView * anchorView;
@property (nonatomic, strong) UILabel * label11;
@property (nonatomic, strong) UILabel * label12;
@property (nonatomic, strong) UILabel * label13;
@property (nonatomic, strong) UILabel * label14;
@property (nonatomic, strong) UILabel * label15;
@property (nonatomic, strong) UILabel * label16;
@property (nonatomic, strong) UILabel * label17;
@property (nonatomic, strong) UILabel * label18;
@property (nonatomic, strong) UILabel * label19;
@property (nonatomic, strong) UILabel * label20;

@end

@implementation PPNormalView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self _initContainerView];
        [self _initAnchorView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [_containerView fillSuperview:10.0f right:10.0f top:75.0f bottom:10.0f];
    [_anchorView anchorInCenter:200.0f height:200.0f];
    
    [self _layoutView];
}

#pragma mark - touch mehtod
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch * touch = [[touches allObjects] firstObject];
    CGPoint point = [touch locationInView:_containerView];
    
    [_anchorView setFrame:CGRectMake(point.x - (_anchorView.width / 2.0f), point.y - (_anchorView.height / 2.0f), _anchorView.width, _anchorView.height)];
    
    [self _layoutView];
}

#pragma mark - private method
- (void)_initContainerView {
    _containerView = [[UIView alloc] init];
    [_containerView setClipsToBounds:YES];
    [_containerView setBackgroundColor:[UIColor colorWithRed:60.0f / 255.0f green:60.0f / 255.0f blue:60.0f / 255.0f alpha:1.0f]];
    [self addSubview:_containerView];
    
    _label1 = [[UILabel alloc] init];
    [_label1 setText:@"1"];
    [_label1 setTextAlignment:NSTextAlignmentCenter];
    [_label1 setTextColor:[UIColor whiteColor]];
    [_label1 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label1 setBackgroundColor:[UIColor colorWithRed:78.0f / 255.0f green:102.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label1];
    
    _label2 = [[UILabel alloc] init];
    [_label2 setText:@"2"];
    [_label2 setTextAlignment:NSTextAlignmentCenter];
    [_label2 setTextColor:[UIColor whiteColor]];
    [_label2 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label2 setBackgroundColor:[UIColor colorWithRed:28.0f / 255.0f green:32.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label2];
    
    _label3 = [[UILabel alloc] init];
    [_label3 setText:@"3"];
    [_label3 setTextAlignment:NSTextAlignmentCenter];
    [_label3 setTextColor:[UIColor whiteColor]];
    [_label3 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label3 setBackgroundColor:[UIColor colorWithRed:178.0f / 255.0f green:202.0f / 255.0f blue:61.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label3];
    
    _label4 = [[UILabel alloc] init];
    [_label4 setText:@"4"];
    [_label4 setTextAlignment:NSTextAlignmentCenter];
    [_label4 setTextColor:[UIColor whiteColor]];
    [_label4 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label4 setBackgroundColor:[UIColor colorWithRed:33.0f / 255.0f green:200.0f / 255.0f blue:41.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label4];
    
    _label5 = [[UILabel alloc] init];
    [_label5 setText:@"5"];
    [_label5 setTextAlignment:NSTextAlignmentCenter];
    [_label5 setTextColor:[UIColor whiteColor]];
    [_label5 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label5 setBackgroundColor:[UIColor colorWithRed:33.0f / 255.0f green:12.0f / 255.0f blue:201.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label5];
    
    _label6 = [[UILabel alloc] init];
    [_label6 setText:@"6"];
    [_label6 setTextAlignment:NSTextAlignmentCenter];
    [_label6 setTextColor:[UIColor whiteColor]];
    [_label6 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label6 setBackgroundColor:[UIColor colorWithRed:190.0f / 255.0f green:12.0f / 255.0f blue:61.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label6];
    
    _label7 = [[UILabel alloc] init];
    [_label7 setText:@"7"];
    [_label7 setTextAlignment:NSTextAlignmentCenter];
    [_label7 setTextColor:[UIColor whiteColor]];
    [_label7 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label7 setBackgroundColor:[UIColor colorWithRed:178.0f / 255.0f green:5.0f / 255.0f blue:51.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label7];
    
    _label8 = [[UILabel alloc] init];
    [_label8 setText:@"8"];
    [_label8 setTextAlignment:NSTextAlignmentCenter];
    [_label8 setTextColor:[UIColor whiteColor]];
    [_label8 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label8 setBackgroundColor:[UIColor colorWithRed:209.0f / 255.0f green:102.0f / 255.0f blue:51.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label8];
    
    _label9 = [[UILabel alloc] init];
    [_label9 setText:@"9"];
    [_label9 setTextAlignment:NSTextAlignmentCenter];
    [_label9 setTextColor:[UIColor whiteColor]];
    [_label9 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label9 setBackgroundColor:[UIColor colorWithRed:90.0f / 255.0f green:42.0f / 255.0f blue:31.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label9];
    
    _label10 = [[UILabel alloc] init];
    [_label10 setText:@"10"];
    [_label10 setTextAlignment:NSTextAlignmentCenter];
    [_label10 setTextColor:[UIColor whiteColor]];
    [_label10 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label10 setBackgroundColor:[UIColor colorWithRed:98.0f / 255.0f green:80.0f / 255.0f blue:200.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label10];
    
    _label14 = [[UILabel alloc] init];
    [_label14 setText:@"14"];
    [_label14 setTextAlignment:NSTextAlignmentCenter];
    [_label14 setTextColor:[UIColor whiteColor]];
    [_label14 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label14 setBackgroundColor:[UIColor colorWithRed:40.0f / 255.0f green:20.0f / 255.0f blue:100.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label14];
    
    _label15 = [[UILabel alloc] init];
    [_label15 setText:@"15"];
    [_label15 setTextAlignment:NSTextAlignmentCenter];
    [_label15 setTextColor:[UIColor whiteColor]];
    [_label15 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label15 setBackgroundColor:[UIColor colorWithRed:198.0f / 255.0f green:180.0f / 255.0f blue:50.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label15];
    
    _label16 = [[UILabel alloc] init];
    [_label16 setText:@"16"];
    [_label16 setTextAlignment:NSTextAlignmentCenter];
    [_label16 setTextColor:[UIColor whiteColor]];
    [_label16 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label16 setBackgroundColor:[UIColor colorWithRed:80.0f / 255.0f green:80.0f / 255.0f blue:80.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label16];
    
    _label17 = [[UILabel alloc] init];
    [_label17 setText:@"17"];
    [_label17 setTextAlignment:NSTextAlignmentCenter];
    [_label17 setTextColor:[UIColor whiteColor]];
    [_label17 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label17 setBackgroundColor:[UIColor colorWithRed:32.0f / 255.0f green:100.0f / 255.0f blue:100.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label17];
    
    _label18 = [[UILabel alloc] init];
    [_label18 setText:@"18"];
    [_label18 setTextAlignment:NSTextAlignmentCenter];
    [_label18 setTextColor:[UIColor whiteColor]];
    [_label18 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label18 setBackgroundColor:[UIColor colorWithRed:87.0f / 255.0f green:20.0f / 255.0f blue:90.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label18];
    
    _label19 = [[UILabel alloc] init];
    [_label19 setText:@"19"];
    [_label19 setTextAlignment:NSTextAlignmentCenter];
    [_label19 setTextColor:[UIColor whiteColor]];
    [_label19 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label19 setBackgroundColor:[UIColor colorWithRed:102.0f / 255.0f green:231.0f / 255.0f blue:10.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label19];
    
    _label20 = [[UILabel alloc] init];
    [_label20 setText:@"20"];
    [_label20 setTextAlignment:NSTextAlignmentCenter];
    [_label20 setTextColor:[UIColor whiteColor]];
    [_label20 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label20 setBackgroundColor:[UIColor colorWithRed:98.0f / 255.0f green:110.0f / 255.0f blue:209.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_label20];
    
}

- (void)_initAnchorView {
    _anchorView = [[UIView alloc] init];
    [_anchorView setClipsToBounds:YES];
    [_anchorView setBackgroundColor:[UIColor colorWithRed:229.0f / 255.0f green:72.0f / 255.0f blue:20.0f / 255.0f alpha:1.0f]];
    [_containerView addSubview:_anchorView];
    
    _label11 = [[UILabel alloc] init];
    [_label11 setText:@"11"];
    [_label11 setTextAlignment:NSTextAlignmentCenter];
    [_label11 setTextColor:[UIColor whiteColor]];
    [_label11 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label11 setBackgroundColor:[UIColor colorWithRed:18.0f / 255.0f green:10.0f / 255.0f blue:100.0f / 255.0f alpha:1.0f]];
    [_anchorView addSubview:_label11];
    
    _label12 = [[UILabel alloc] init];
    [_label12 setText:@"12"];
    [_label12 setTextAlignment:NSTextAlignmentCenter];
    [_label12 setTextColor:[UIColor whiteColor]];
    [_label12 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label12 setBackgroundColor:[UIColor colorWithRed:18.0f / 255.0f green:90.0f / 255.0f blue:90.0f / 255.0f alpha:1.0f]];
    [_anchorView addSubview:_label12];
    
    _label13 = [[UILabel alloc] init];
    [_label13 setText:@"13"];
    [_label13 setTextAlignment:NSTextAlignmentCenter];
    [_label13 setTextColor:[UIColor whiteColor]];
    [_label13 setFont:[UIFont systemFontOfSize:20.0f]];
    [_label13 setBackgroundColor:[UIColor colorWithRed:201.0f / 255.0f green:90.0f / 255.0f blue:100.0f / 255.0f alpha:1.0f]];
    [_anchorView addSubview:_label13];
}

- (void)_layoutView {
    [_anchorView groupInCorner:PPGroupVertical views:@[_label11, _label12, _label13] inCorner:PPCornerTopRight padding:10.0f width:40.0f height:40.0f];
    [_label1 alignAndFillWidth:PPAlignToTheRightMatchingTop relativeTo:_anchorView padding:10.0f height:50.0f];
    
    [_containerView groupAndAlign:PPGroupHorizontal andAlign:PPAlignUnderMatchingLeft viwes:@[_label2, _label3, _label4] relativeTo:_label1 padding:10.0f width:60.0f height:60.0f];
    [_label5 alignAndFillWidth:PPAlignToTheRightMatchingTop relativeTo:_label4 padding:10.0f height:60.0f];
    [_label6 alignAndFill:PPAlignUnderMatchingLeft relativeTo:_label2 padding:10.0f];
    [_label7 alignAndFillHeight:PPAlignAboveMatchingRight relativeTo:_label1 padding:10.0f width:60.0f];
    [_label8 alignAndFillWidth:PPAlignToTheLeftMatchingTop relativeTo:_label7 padding:10.0f height:70.0f];
    [_label9 alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:_label8 secondaryView:_anchorView padding:10.0f width:100.0f];
    [_label10 alignBetweenHorizontal:PPAlignToTheRightMatchingTop primaryView:_label9 secondaryView:_label7 padding:10.0f height:_label9.height];
    
    [_label14 anchorInCorner:PPCornerBottomLeft xPad:10.0f yPad:10.0f width:100.0f height:100.0f];
    [_label15 alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:_label9 secondaryView:_label14 padding:10.0f width:50.0f];
    [_label16 alignBetweenHorizontal:PPAlignToTheRightMatchingBottom primaryView:_label14 secondaryView:_label6 padding:10.0f height:40.0f];
    [_label17 alignBetweenHorizontal:PPAlignToTheRightMatchingTop primaryView:_label15 secondaryView:_anchorView padding:10.0f height:100.0f];
    [_label18 alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:_anchorView secondaryView:_label16 padding:10.0f width:_anchorView.width];
    [_label19 alignBetweenHorizontal:PPAlignToTheRightMatchingTop primaryView:_label14 secondaryView:_label18 padding:10.0f height:50.0f];
    [_label20 alignBetweenVertical:PPAlignUnderCentered primaryView:_label17 secondaryView:_label19 padding:10.0f width:_label17.width];
}

@end
