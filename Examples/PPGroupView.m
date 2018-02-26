//
//  PPGroupView.m
//  PPNeon
//
//  Created by silencedev on 13/12/2016.
//  Copyright © 2016 silencedev. All rights reserved.
//

#import "PPGroupView.h"

@interface PPGroupView ()

@property (nonatomic, strong) UIView  *groupAlign1;
@property (nonatomic, strong) UILabel *groupAlignLabel1;
@property (nonatomic, strong) UILabel *groupAlignLabel2;

@property (nonatomic, strong) UIView  *groupAlign2;
@property (nonatomic, strong) UILabel *groupAlignLabel3;
@property (nonatomic, strong) UILabel *groupAlignLabel4;

@property (nonatomic, strong) UIView *AView;
@property (nonatomic, strong) UIView *groupCorner1;
@property (nonatomic, strong) UIView *groupCorner2;

@property (nonatomic, strong) UIView *BView;
@property (nonatomic, strong) UIView *groupFillView1;
@property (nonatomic, strong) UIView *groupFillView2;

@end

@implementation PPGroupView

#pragma mark - Life Cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self _initGroupAlign];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self _layoutGroupAlign];
}

#pragma mark - Private Method
- (void)_initGroupAlign {
    _groupAlign1 = [[UIView alloc] init];
    [_groupAlign1 setBackgroundColor:[UIColor colorWithRed:60.0f / 255.0f green:60.0f / 255.0f blue:60.0f / 255.0f alpha:1.0f]];
    [_groupAlign1 setClipsToBounds:YES];
    [self addSubview:_groupAlign1];
    
    _groupAlignLabel1 = [[UILabel alloc] init];
    [_groupAlignLabel1 setText:@"1"];
    [_groupAlignLabel1 setTextAlignment:NSTextAlignmentCenter];
    [_groupAlignLabel1 setFont:[UIFont systemFontOfSize:20.0f]];
    [_groupAlignLabel1 setBackgroundColor:[UIColor colorWithRed:78.0f / 255.0f green:102.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [self addSubview:_groupAlignLabel1];
    
    _groupAlignLabel2 = [[UILabel alloc] init];
    [_groupAlignLabel2 setText:@"2"];
    [_groupAlignLabel2 setTextAlignment:NSTextAlignmentCenter];
    [_groupAlignLabel2 setFont:[UIFont systemFontOfSize:20.0f]];
    [_groupAlignLabel2 setBackgroundColor:[UIColor colorWithRed:28.0f / 255.0f green:102.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [self addSubview:_groupAlignLabel2];
    
    ////////////////////////////////////////////////////////////////////
    
    _groupAlign2 = [[UIView alloc] init];
    [_groupAlign2 setBackgroundColor:[UIColor colorWithRed:60.0f / 255.0f green:60.0f / 255.0f blue:60.0f / 255.0f alpha:1.0f]];
    [_groupAlign2 setClipsToBounds:YES];
    [self addSubview:_groupAlign2];
    
    _groupAlignLabel3 = [[UILabel alloc] init];
    [_groupAlignLabel3 setText:@"3"];
    [_groupAlignLabel3 setTextAlignment:NSTextAlignmentCenter];
    [_groupAlignLabel3 setFont:[UIFont systemFontOfSize:20.0f]];
    [_groupAlignLabel3 setBackgroundColor:[UIColor colorWithRed:78.0f / 255.0f green:102.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [self addSubview:_groupAlignLabel3];
    
    _groupAlignLabel4 = [[UILabel alloc] init];
    [_groupAlignLabel4 setText:@"4"];
    [_groupAlignLabel4 setTextAlignment:NSTextAlignmentCenter];
    [_groupAlignLabel4 setFont:[UIFont systemFontOfSize:20.0f]];
    [_groupAlignLabel4 setBackgroundColor:[UIColor colorWithRed:28.0f / 255.0f green:102.0f / 255.0f blue:101.0f / 255.0f alpha:1.0f]];
    [self addSubview:_groupAlignLabel4];
    
    ////////////////////////////////////////////////////////////////////
    
    self.AView = [[UIView alloc] init];
    [self.AView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.AView];
    
    self.groupCorner1 = [[UIView alloc] init];
    [self.groupCorner1 setBackgroundColor:[UIColor redColor]];
    [self.AView addSubview:self.groupCorner1];
    
    self.groupCorner2 = [[UIView alloc] init];
    [self.groupCorner2 setBackgroundColor:[UIColor greenColor]];
    [self.AView addSubview:self.groupCorner2];
    
    ////////////////////////////////////////////////////////////////////
    
    self.BView = [[UIView alloc] init];
    [self.BView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.BView];
    
    self.groupFillView1 = [[UIView alloc] init];
    [self.groupFillView1 setBackgroundColor:[UIColor redColor]];
    [self.BView addSubview:self.groupFillView1];
    
    self.groupFillView2 = [[UIView alloc] init];
    [self.groupFillView2 setBackgroundColor:[UIColor greenColor]];
    [self.BView addSubview:self.groupFillView2];
}

- (void)_layoutGroupAlign {
    [self groupAgainstEdge:PPGroupVertical views:@[ _groupAlign1, _groupAlign2, _AView, _BView ] againstEdge:PPEdgeTop padding:70.0f width:100.0f height:100.0f];
//    [self groupAgainstEdge:PPGroupHorizontal views:@[ _groupAlign1, _groupAlign2, _AView ] againstEdge:PPEdgeTop padding:70.0f width:100.0f height:100.0f];
    
//    [_groupAlign1 anchorInCorner:PPCornerTopLeft xPad:100.0f yPad:100.0f width:100.0f height:100.0f];
//    [_groupAlign1 groupAndAlign:PPGroupHorizontal andAlign:PPAlignToTheRightCentered viwes:@[ _groupAlignLabel1, _groupAlignLabel2 ] relativeTo:_groupAlign1 padding:5.0f width:40.0f height:24.0f];
    [_groupAlign1 groupAndAlign:PPGroupVertical andAlign:PPAlignToTheRightCentered viwes:@[ _groupAlignLabel1, _groupAlignLabel2 ] relativeTo:_groupAlign1 padding:5.0f width:40.0f height:24.0f];
    
//    [_groupAlign2 align:PPAlignUnderCentered relativeTo:_groupAlign1 padding:10.0f width:100.0f height:100.0f];
    [_groupAlignLabel3 setText:@"333333333"];
    [_groupAlignLabel3 setFont:[UIFont systemFontOfSize:20.0f]];
    [_groupAlignLabel3 sizeToFit];
    [_groupAlignLabel4 setText:@"444"];
    [_groupAlignLabel4 setFont:[UIFont systemFontOfSize:10.0f]];
    [_groupAlignLabel4 sizeToFit];
    [_groupAlign2 groupAndAlign:PPGroupHorizontal andAlign:PPAlignToTheRightCentered viwes:@[ _groupAlignLabel3, _groupAlignLabel4 ] viewsPadding:15.0f relativeTo:_groupAlign2 padding:5.0f maxWidth:50.0f maxHeight:50.0f];
//    [_groupAlign2 groupAndAlign:PPGroupVertical andAlign:PPAlignToTheRightCentered viwes:@[ _groupAlignLabel3, _groupAlignLabel4 ] viewsPadding:15.0f relativeTo:_groupAlign2 padding:5.0f maxWidth:50.0f maxHeight:50.0f];
    
    ////////////////////////////////////////////////////////////////////
    
    [_AView groupInCorner:PPGroupVertical views:@[ _groupCorner1, _groupCorner2 ] inCorner:PPCornerTopLeft padding:10.0f width:30.0f height:30.0f];
    [_AView groupInCorner:PPGroupHorizontal views:@[ _groupCorner1, _groupCorner2 ] inCorner:PPCornerTopLeft padding:10.0f width:30.0f height:30.0f];
    
    ////////////////////////////////////////////////////////////////////
    
    [_BView groupAndFill:PPGroupVertical views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f];
    [_BView groupAndFill:PPGroupHorizontal views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f];
    
    [_BView groupAndFill:PPGroupVertical views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f width:20.0f height:20.0f];
    [_BView groupAndFill:PPGroupHorizontal views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f width:20.0f height:20.0f];
    
    [_BView groupInCenter:PPGroupVertical views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f width:30.0f height:30.0f];
    [_BView groupInCenter:PPGroupHorizontal views:@[ _groupFillView1, _groupFillView2 ] padding:10.0f width:30.0f height:30.0f];
}

@end
