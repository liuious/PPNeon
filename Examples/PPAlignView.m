//
//  PPAlignView.m
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPAlignView.h"

@interface PPAlignView ()

@property (nonatomic, strong) UIView *AView;

@property (nonatomic, strong) UIView *topAView;
@property (nonatomic, strong) UIView *topBView;
@property (nonatomic, strong) UIView *topCView;

@property (nonatomic, strong) UIView *leftAView;
@property (nonatomic, strong) UIView *leftBView;
@property (nonatomic, strong) UIView *leftCView;

@property (nonatomic, strong) UIView *rightAView;
@property (nonatomic, strong) UIView *rightBView;
@property (nonatomic, strong) UIView *rightCView;

@property (nonatomic, strong) UIView *bottomAView;
@property (nonatomic, strong) UIView *bottomBView;
@property (nonatomic, strong) UIView *bottomCView;


@property (nonatomic, strong) UIView *BContentView;
@property (nonatomic, strong) UIView *BView;
@property (nonatomic, strong) UIView *fillHAView;
@property (nonatomic, strong) UIView *fillHBView;
@property (nonatomic, strong) UIView *fillHCView;
@property (nonatomic, strong) UIView *fillHDView;
@property (nonatomic, strong) UIView *fillHEView;
@property (nonatomic, strong) UIView *fillHFView;
@property (nonatomic, strong) UIView *fillHGView;
@property (nonatomic, strong) UIView *fillHHView;
@property (nonatomic, strong) UIView *fillHIView;
@property (nonatomic, strong) UIView *fillHJView;
@property (nonatomic, strong) UIView *fillHKView;
@property (nonatomic, strong) UIView *fillHLView;

@property (nonatomic, strong) UIView *CContentView;
@property (nonatomic, strong) UIView *CView;
@property (nonatomic, strong) UIView *fillWAView;
@property (nonatomic, strong) UIView *fillWBView;
@property (nonatomic, strong) UIView *fillWCView;
@property (nonatomic, strong) UIView *fillWDView;
@property (nonatomic, strong) UIView *fillWEView;
@property (nonatomic, strong) UIView *fillWFView;
@property (nonatomic, strong) UIView *fillWGView;
@property (nonatomic, strong) UIView *fillWHView;
@property (nonatomic, strong) UIView *fillWIView;
@property (nonatomic, strong) UIView *fillWJView;
@property (nonatomic, strong) UIView *fillWKView;
@property (nonatomic, strong) UIView *fillWLView;

@property (nonatomic, strong) UIView *DContentView;
@property (nonatomic, strong) UIView *DView;
@property (nonatomic, strong) UIView *fillAView;
@property (nonatomic, strong) UIView *fillBView;
@property (nonatomic, strong) UIView *fillCView;
@property (nonatomic, strong) UIView *fillDView;
@property (nonatomic, strong) UIView *fillEView;
@property (nonatomic, strong) UIView *fillFView;
@property (nonatomic, strong) UIView *fillGView;
@property (nonatomic, strong) UIView *fillHView;
@property (nonatomic, strong) UIView *fillIView;
@property (nonatomic, strong) UIView *fillJView;
@property (nonatomic, strong) UIView *fillKView;
@property (nonatomic, strong) UIView *fillLView;

@property (nonatomic, strong) UIView *EContentView;
@property (nonatomic, strong) UIView *horizonView;
@property (nonatomic, strong) UIView *horizonAView;
@property (nonatomic, strong) UIView *horizonBView;

@property (nonatomic, strong) UIView *FContentView;
@property (nonatomic, strong) UIView *verticalView;
@property (nonatomic, strong) UIView *verticalAView;
@property (nonatomic, strong) UIView *verticalBView;

- (void)p_initAlignView;

@end

@implementation PPAlignView

#pragma mark - Life Cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self p_initAlignView];
    }
    return self;
}

- (void)dealloc {
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.AView anchorInCenter:100.0f height:100.0f];
    self.AView.y = 100.0f;
    
//    [self.topAView align:PPAlignAboveMatchingLeft relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.topBView align:PPAlignAboveCentered relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.topCView align:PPAlignAboveMatchingRight relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    
//    [self.leftAView align:PPAlignToTheLeftMatchingTop relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.leftBView align:PPAlignToTheLeftCentered relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.leftCView align:PPAlignToTheLeftMatchingBottom relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
    
//    [self.rightAView align:PPAlignToTheRightMatchingTop relativeTo:self.AView padding:10.0f width:30.0f height:50.0f];
    
//    [self.rightAView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.under(self.AView).xOffset(10).yOffset(20).size(CGSizeMake(30, 50));
//    }];
    
//    [self.rightBView align:PPAlignToTheRightCentered relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.rightCView align:PPAlignToTheRightMatchingBottom relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//
//    [self.bottomAView align:PPAlignUnderMatchingLeft relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.bottomBView align:PPAlignUnderCentered relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
//    [self.bottomCView align:PPAlignUnderMatchingRight relativeTo:self.AView padding:10.0f width:20.0f height:20.0f];
    
//    [self.topAView align:PPAlignAboveMatchingLeft relativeTo:self.AView xPadding:5.0f yPadding:10.0f width:20.0f height:20.0f];
//    [self.topBView align:PPAlignAboveCentered relativeTo:self.AView xPadding:5.0f yPadding:10.0f width:20.0f height:20.0f];
//    [self.topCView align:PPAlignAboveMatchingRight relativeTo:self.AView xPadding:5.0f yPadding:10.0f width:20.0f height:20.0f];
//    
//    [self.leftAView align:PPAlignToTheLeftMatchingTop relativeTo:self.AView xPadding:10.0f yPadding:5.0f width:20.0 height:20.0f];
//    [self.leftBView align:PPAlignToTheLeftCentered relativeTo:self.AView xPadding:10.0f yPadding:5.0f width:20.0f height:20.0f];
//    [self.leftCView align:PPAlignToTheLeftMatchingBottom relativeTo:self.AView xPadding:10.0f yPadding:5.0f width:20.0f height:20.0f];
//    
//    [self.rightAView align:PPAlignToTheRightMatchingTop relativeTo:self.AView xPadding:5.0f yPadding:10.0f width:20.0f height:20.0f];
//    [self.rightBView align:PPAlignToTheRightCentered relativeTo:self.AView xPadding:5.0f yPadding:5.0f width:20.0f height:20.0f];
//    [self.rightCView align:PPAlignToTheRightMatchingBottom relativeTo:self.AView xPadding:5.0f yPadding:10.0f width:20.0f height:20.0f];
//    
//    [self.bottomAView align:PPAlignUnderMatchingLeft relativeTo:self.AView xPadding:10.0f yPadding:5.0f width:20.0f height:20.0f];
//    [self.bottomBView align:PPAlignUnderCentered relativeTo:self.AView xPadding:5.0f yPadding:5.0f width:20.0f height:20.0f];
//    [self.bottomCView align:PPAlignUnderMatchingRight relativeTo:self.AView xPadding:10.0f yPadding:5.0f width:20.0f height:20.0f];
    
    
    /////////////////////////////////////////////////////////////////
    
//    [self.CContentView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.under(self.AView).xOffset((self.AView.width - 100.0f) / 2).yOffset(70.0f).width(100.0f).height(100.0f);
//    }];
//    
//    [self.DContentView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.right(self.CContentView).xOffset(20.0f).width(100.0f).height(100.0f);
//    }];
//    
//    [self.BContentView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.left(self.CContentView).xOffset(20.0f).width(100.0f).height(100.0f);
//    }];
//    [self.BView anchorInCenter:60.0f height:60.0f];
//    
//    [self.fillHAView alignAndFillHeight:PPAlignAboveMatchingLeft relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHBView alignAndFillHeight:PPAlignAboveCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHCView alignAndFillHeight:PPAlignAboveMatchingRight relativeTo:self.BView padding:4.0f width:10.0f];
//    
////    [self.fillHDView alignAndFillHeight:PPAlignToTheLeftMatchingTop relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillHEView alignAndFillHeight:PPAlignToTheLeftCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHFView alignAndFillHeight:PPAlignToTheLeftMatchingBottom relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    [self.fillHGView alignAndFillHeight:PPAlignUnderMatchingLeft relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHHView alignAndFillHeight:PPAlignUnderCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHIView alignAndFillHeight:PPAlignUnderMatchingRight relativeTo:self.BView padding:4.0f width:10.0f];
//    
////    [self.fillHJView alignAndFillHeight:PPAlignToTheRightMatchingTop relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillHKView alignAndFillHeight:PPAlignToTheRightCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillHLView alignAndFillHeight:PPAlignToTheRightMatchingBottom relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    /////////////////////////////////////////////////////////////////
//    
//    [self.CView anchorInCenter:60.0f height:60.0f];
//    
//    [self.fillWAView alignAndFillHeight:PPAlignAboveMatchingLeft relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillWBView alignAndFillHeight:PPAlignAboveCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillWCView alignAndFillHeight:PPAlignAboveMatchingRight relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    [self.fillWDView alignAndFillHeight:PPAlignToTheLeftMatchingTop relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillWEView alignAndFillHeight:PPAlignToTheLeftCentered relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillWFView alignAndFillHeight:PPAlignToTheLeftMatchingBottom relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    [self.fillWGView alignAndFillHeight:PPAlignUnderMatchingLeft relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillWHView alignAndFillHeight:PPAlignUnderCentered relativeTo:self.BView padding:4.0f width:10.0f];
//    [self.fillWIView alignAndFillHeight:PPAlignUnderMatchingRight relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    [self.fillWJView alignAndFillHeight:PPAlignToTheRightMatchingTop relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillWKView alignAndFillHeight:PPAlignToTheRightCentered relativeTo:self.BView padding:4.0f width:10.0f];
////    [self.fillWLView alignAndFillHeight:PPAlignToTheRightMatchingBottom relativeTo:self.BView padding:4.0f width:10.0f];
//    
//    /////////////////////////////////////////////////////////////////
//
//    [self.DView anchorInCenter:60.0f height:60.0f];
//    
////    [self.fillAView alignAndFill:PPAlignAboveMatchingLeft relativeTo:self.DView padding:2.0f];
////    [self.fillBView alignAndFill:PPAlignAboveMatchingRight relativeTo:self.DView padding:2.0f];
////    [self.fillCView alignAndFill:PPAlignAboveCentered relativeTo:self.DView padding:2.0f];
//    
////    [self.fillDView alignAndFill:PPAlignToTheLeftMatchingTop relativeTo:self.DView padding:2.0f];
////    [self.fillEView alignAndFill:PPAlignToTheLeftMatchingBottom relativeTo:self.DView padding:2.0f];
////    [self.fillFView alignAndFill:PPAlignToTheLeftCentered relativeTo:self.DView padding:2.0f];
//    
////    [self.fillGView alignAndFill:PPAlignUnderMatchingLeft relativeTo:self.DView padding:2.0f];
////    [self.fillHView alignAndFill:PPAlignUnderMatchingRight relativeTo:self.DView padding:2.0f];
////    [self.fillIView alignAndFill:PPAlignUnderCentered relativeTo:self.DView padding:2.0f];
//    
////    [self.fillJView alignAndFill:PPAlignToTheRightMatchingTop relativeTo:self.DView padding:2.0f];
////    [self.fillKView alignAndFill:PPAlignToTheRightMatchingBottom relativeTo:self.DView padding:2.0f];
//    [self.fillLView alignAndFill:PPAlignToTheRightCentered relativeTo:self.DView padding:2.0f];
//    
//    /////////////////////////////////////////////////////////////////
//    
//    [self.EContentView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.under(self.BContentView).yOffset(50.0f).width(100.0f).height(100.0f);
//    }];
//    [self.horizonAView anchorToEdge:PPEdgeLeft padding:20.0f width:10.0f height:60.0f];
//    [self.horizonBView anchorToEdge:PPEdgeRight padding:20.0f width:10.0f height:80.0f];
//
////    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightCentered primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:30.0f];
////    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightMatchingTop primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightMatchingBottom primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftCentered primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftMatchingTop primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftMatchingBottom primaryView:self.horizonAView secondaryView:self.horizonBView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightCentered primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:30.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightMatchingTop primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheRightMatchingBottom primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftCentered primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftMatchingTop primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:70.0f];
//    [self.horizonView alignBetweenHorizontal:PPAlignToTheLeftMatchingBottom primaryView:self.horizonBView secondaryView:self.horizonAView padding:10.0f height:70.0f];
//
//    /////////////////////////////////////////////////////////////////
//    
//    [self.FContentView pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
//        align.under(self.CContentView).yOffset(50.0f).width(100.0f).height(100.0f);
//    }];
//    
//    [self.verticalAView anchorToEdge:PPEdgeTop padding:20.0f width:60.0f height:10.0f];
//    [self.verticalBView anchorToEdge:PPEdgeBottom padding:20.0f width:80.0f height:10.0f];
//    
//    [self.verticalView alignBetweenVertical:PPAlignAboveCentered primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignAboveMatchingLeft primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignAboveMatchingRight primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderCentered primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderMatchingRight primaryView:self.verticalAView secondaryView:self.verticalBView padding:10.0f width:50.0f];
//    
//
//    [self.verticalView alignBetweenVertical:PPAlignAboveCentered primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignAboveMatchingLeft primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignAboveMatchingRight primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderCentered primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    [self.verticalView alignBetweenVertical:PPAlignUnderMatchingRight primaryView:self.verticalBView secondaryView:self.verticalAView padding:10.0f width:50.0f];
//    
//    [self.verticalView alignBetweenVertical:PPAlignUnderMatchingLeft primaryView:self.verticalBView secondaryView:self.verticalAView];
}

#pragma mark - Private Method
- (void)p_initAlignView {
    self.AView = [[UIView alloc] init];
    [self.AView setBackgroundColor:[UIColor redColor]];
    [self addSubview:self.AView];
    
    self.topAView = [[UIView alloc] init];
    [self.topAView setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.topAView];
    
    self.topBView = [[UIView alloc] init];
    [self.topBView setBackgroundColor:[UIColor blueColor]];
    [self addSubview:self.topBView];
    
    self.topCView = [[UIView alloc] init];
    [self.topCView setBackgroundColor:[UIColor greenColor]];
    [self addSubview:self.topCView];
    
    
    self.leftAView = [[UIView alloc] init];
    [self.leftAView setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.leftAView];
    
    self.leftBView = [[UIView alloc] init];
    [self.leftBView setBackgroundColor:[UIColor blueColor]];
    [self addSubview:self.leftBView];
    
    self.leftCView = [[UIView alloc] init];
    [self.leftCView setBackgroundColor:[UIColor greenColor]];
    [self addSubview:self.leftCView];

    
    self.rightAView = [[UIView alloc] init];
    [self.rightAView setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.rightAView];
    
    self.rightBView = [[UIView alloc] init];
    [self.rightBView setBackgroundColor:[UIColor blueColor]];
    [self addSubview:self.rightBView];
    
    self.rightCView = [[UIView alloc] init];
    [self.rightCView setBackgroundColor:[UIColor greenColor]];
    [self addSubview:self.rightCView];

    
    self.bottomAView = [[UIView alloc] init];
    [self.bottomAView setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:self.bottomAView];
    
    self.bottomBView = [[UIView alloc] init];
    [self.bottomBView setBackgroundColor:[UIColor blueColor]];
    [self addSubview:self.bottomBView];
    
    self.bottomCView = [[UIView alloc] init];
    [self.bottomCView setBackgroundColor:[UIColor greenColor]];
    [self addSubview:self.bottomCView];
    
    /////////////////////////////////////////////////////////////////
    
    self.BContentView = [[UIView alloc] init];
    [self.BContentView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.BContentView];
    
    self.BView = [[UIView alloc] init];
    [self.BView setBackgroundColor:[UIColor redColor]];
    [self.BContentView addSubview:self.BView];
    
    self.fillHAView = [[UIView alloc] init];
    [self.fillHAView setBackgroundColor:[UIColor greenColor]];
    [self.BContentView addSubview:self.fillHAView];
    
    self.fillHBView = [[UIView alloc] init];
    [self.fillHBView setBackgroundColor:[UIColor yellowColor]];
    [self.BContentView addSubview:self.fillHBView];
    
    self.fillHCView = [[UIView alloc] init];
    [self.fillHCView setBackgroundColor:[UIColor blueColor]];
    [self.BContentView addSubview:self.fillHCView];
    
    self.fillHDView = [[UIView alloc] init];
    [self.fillHDView setBackgroundColor:[UIColor greenColor]];
    [self.BContentView addSubview:self.fillHDView];
    
    self.fillHEView = [[UIView alloc] init];
    [self.fillHEView setBackgroundColor:[UIColor yellowColor]];
    [self.BContentView addSubview:self.fillHEView];
    
    self.fillHFView = [[UIView alloc] init];
    [self.fillHFView setBackgroundColor:[UIColor blueColor]];
    [self.BContentView addSubview:self.fillHFView];
    
    self.fillHGView = [[UIView alloc] init];
    [self.fillHGView setBackgroundColor:[UIColor greenColor]];
    [self.BContentView addSubview:self.fillHGView];
    
    self.fillHHView = [[UIView alloc] init];
    [self.fillHHView setBackgroundColor:[UIColor yellowColor]];
    [self.BContentView addSubview:self.fillHHView];
    
    self.fillHIView = [[UIView alloc] init];
    [self.fillHIView setBackgroundColor:[UIColor blueColor]];
    [self.BContentView addSubview:self.fillHIView];
    
    self.fillHJView = [[UIView alloc] init];
    [self.fillHJView setBackgroundColor:[UIColor greenColor]];
    [self.BContentView addSubview:self.fillHJView];
    
    self.fillHKView = [[UIView alloc] init];
    [self.fillHKView setBackgroundColor:[UIColor yellowColor]];
    [self.BContentView addSubview:self.fillHKView];
    
    self.fillHLView = [[UIView alloc] init];
    [self.fillHLView setBackgroundColor:[UIColor blueColor]];
    [self.BContentView addSubview:self.fillHLView];
    
    /////////////////////////////////////////////////////////////////
    
    self.CContentView = [[UIView alloc] init];
    [self.CContentView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.CContentView];
    
    self.CView = [[UIView alloc] init];
    [self.CView setBackgroundColor:[UIColor redColor]];
    [self.CContentView addSubview:self.CView];
    
    self.fillWAView = [[UIView alloc] init];
    [self.fillWAView setBackgroundColor:[UIColor greenColor]];
    [self.CContentView addSubview:self.fillWAView];
    
    self.fillWBView = [[UIView alloc] init];
    [self.fillWBView setBackgroundColor:[UIColor yellowColor]];
    [self.CContentView addSubview:self.fillWBView];
    
    self.fillWCView = [[UIView alloc] init];
    [self.fillWCView setBackgroundColor:[UIColor blueColor]];
    [self.CContentView addSubview:self.fillWCView];
    
    self.fillWDView = [[UIView alloc] init];
    [self.fillWDView setBackgroundColor:[UIColor greenColor]];
    [self.CContentView addSubview:self.fillWDView];
    
    self.fillWEView = [[UIView alloc] init];
    [self.fillWEView setBackgroundColor:[UIColor yellowColor]];
    [self.CContentView addSubview:self.fillWEView];
    
    self.fillWFView = [[UIView alloc] init];
    [self.fillWFView setBackgroundColor:[UIColor blueColor]];
    [self.CContentView addSubview:self.fillWFView];
    
    self.fillWGView = [[UIView alloc] init];
    [self.fillWGView setBackgroundColor:[UIColor greenColor]];
    [self.CContentView addSubview:self.fillWGView];
    
    self.fillWHView = [[UIView alloc] init];
    [self.fillWHView setBackgroundColor:[UIColor yellowColor]];
    [self.CContentView addSubview:self.fillWHView];
    
    self.fillWIView = [[UIView alloc] init];
    [self.fillWIView setBackgroundColor:[UIColor blueColor]];
    [self.CContentView addSubview:self.fillWIView];
    
    self.fillWJView = [[UIView alloc] init];
    [self.fillWJView setBackgroundColor:[UIColor greenColor]];
    [self.CContentView addSubview:self.fillWJView];
    
    self.fillWKView = [[UIView alloc] init];
    [self.fillWKView setBackgroundColor:[UIColor yellowColor]];
    [self.CContentView addSubview:self.fillWKView];
    
    self.fillWLView = [[UIView alloc] init];
    [self.fillWLView setBackgroundColor:[UIColor blueColor]];
    [self.CContentView addSubview:self.fillWLView];
    
    /////////////////////////////////////////////////////////////////
    
    self.DContentView = [[UIView alloc] init];
    [self.DContentView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.DContentView];
    
    self.DView = [[UIView alloc] init];
    [self.DView setBackgroundColor:[UIColor redColor]];
    [self.DContentView addSubview:self.DView];
    
    self.fillAView = [[UIView alloc] init];
    [self.fillAView setBackgroundColor:[UIColor greenColor]];
    [self.DContentView addSubview:self.fillAView];
    
    self.fillBView = [[UIView alloc] init];
    [self.fillBView setBackgroundColor:[UIColor yellowColor]];
    [self.DContentView addSubview:self.fillBView];
    
    self.fillCView = [[UIView alloc] init];
    [self.fillCView setBackgroundColor:[UIColor blueColor]];
    [self.DContentView addSubview:self.fillCView];
    
    self.fillDView = [[UIView alloc] init];
    [self.fillDView setBackgroundColor:[UIColor greenColor]];
    [self.DContentView addSubview:self.fillDView];
    
    self.fillEView = [[UIView alloc] init];
    [self.fillEView setBackgroundColor:[UIColor yellowColor]];
    [self.DContentView addSubview:self.fillEView];
    
    self.fillFView = [[UIView alloc] init];
    [self.fillFView setBackgroundColor:[UIColor blueColor]];
    [self.DContentView addSubview:self.fillFView];
    
    self.fillGView = [[UIView alloc] init];
    [self.fillGView setBackgroundColor:[UIColor greenColor]];
    [self.DContentView addSubview:self.fillGView];
    
    self.fillHView = [[UIView alloc] init];
    [self.fillHView setBackgroundColor:[UIColor yellowColor]];
    [self.DContentView addSubview:self.fillHView];
    
    self.fillIView = [[UIView alloc] init];
    [self.fillIView setBackgroundColor:[UIColor blueColor]];
    [self.DContentView addSubview:self.fillIView];
    
    self.fillJView = [[UIView alloc] init];
    [self.fillJView setBackgroundColor:[UIColor greenColor]];
    [self.DContentView addSubview:self.fillJView];
    
    self.fillKView = [[UIView alloc] init];
    [self.fillKView setBackgroundColor:[UIColor yellowColor]];
    [self.DContentView addSubview:self.fillKView];
    
    self.fillLView = [[UIView alloc] init];
    [self.fillLView setBackgroundColor:[UIColor blueColor]];
    [self.DContentView addSubview:self.fillLView];
    
    self.fillLView = [[UIView alloc] init];
    [self.fillLView setBackgroundColor:[UIColor blueColor]];
    [self.DContentView addSubview:self.fillLView];
    
    /////////////////////////////////////////////////////////////////
    
    self.EContentView = [[UIView alloc] init];
    [self.EContentView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.EContentView];
    
    self.horizonView = [[UIView alloc] init];
    [self.horizonView setBackgroundColor:[UIColor redColor]];
    [self.EContentView addSubview:self.horizonView];
    
    self.horizonAView = [[UIView alloc] init];
    [self.horizonAView setBackgroundColor:[UIColor greenColor]];
    [self.EContentView addSubview:self.horizonAView];
    
    self.horizonBView = [[UIView alloc] init];
    [self.horizonBView setBackgroundColor:[UIColor blueColor]];
    [self.EContentView addSubview:self.horizonBView];
    
    /////////////////////////////////////////////////////////////////
    
    self.FContentView = [[UIView alloc] init];
    [self.FContentView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:self.FContentView];
    
    self.verticalView = [[UIView alloc] init];
    [self.verticalView setBackgroundColor:[UIColor redColor]];
    [self.FContentView addSubview:self.verticalView];
    
    self.verticalAView = [[UIView alloc] init];
    [self.verticalAView setBackgroundColor:[UIColor greenColor]];
    [self.FContentView addSubview:self.verticalAView];
    
    self.verticalBView = [[UIView alloc] init];
    [self.verticalBView setBackgroundColor:[UIColor blueColor]];
    [self.FContentView addSubview:self.verticalBView];
}

@end
