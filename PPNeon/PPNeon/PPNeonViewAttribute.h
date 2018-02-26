//
//  PPNeonViewAttribute.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonUtilities.h"

typedef NS_ENUM (NSInteger, PPNeonConstraintType) {
    PPNeonConstraintType_Align,
    PPNeonConstraintType_EdgeCorner
};

typedef NS_ENUM (NSInteger, PPNeonConstraintAlignType) {
    PPNeonConstraintAlignType_Above,
    PPNeonConstraintAlignType_Under,
    PPNeonConstraintAlignType_Left,
    PPNeonConstraintAlignType_Right
};

typedef NS_ENUM (NSInteger, PPNeonConstraintEdgeCornerType) {
    PPNeonConstraintEdgeCornerType_TopLeft,
    PPNeonConstraintEdgeCornerType_TopRight,
    PPNeonConstraintEdgeCornerType_BottomLeft,
    PPNeonConstraintEdgeCornerType_BottomRight
};

@interface PPNeonViewAttribute : NSObject

@property (nonatomic, weak) UIView *relativeView;

@property (nonatomic, assign) PPNeonConstraintType constraintType;
@property (nonatomic, assign) PPNeonConstraintAlignType alignType;
@property (nonatomic, assign) PPNeonConstraintEdgeCornerType  edgeCornerType;

@property (nonatomic, assign) CGSize superViewSize;

@property (nonatomic, assign) CGFloat xOffset;
@property (nonatomic, assign) CGFloat yOffset;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat scale;

@property (nonatomic, assign, readonly) CGRect frame;

- (instancetype)initWithRelativeView:(UIView *)relativeView;

@end
