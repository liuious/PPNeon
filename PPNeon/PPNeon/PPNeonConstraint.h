//
//  PPNeonConstraint.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonUtilities.h"
#import "PPNeonViewAttribute.h"

@interface PPNeonConstraint : NSObject

@property (nonatomic, strong) PPNeonViewAttribute *viewAttribute;

- (PPNeonConstraint * (^)(CGFloat))xOffset;
- (PPNeonConstraint * (^)(CGFloat))yOffset;
- (PPNeonConstraint * (^)(CGSize))size;
- (PPNeonConstraint * (^)(CGFloat))width;
- (PPNeonConstraint * (^)(CGFloat))height;
- (PPNeonConstraint * (^)(CGSize))superViewSize;
- (PPNeonConstraint * (^)(CGFloat))scale;

- (CGRect (^)(void))install;

@end


@interface PPNeonViewConstraint : PPNeonConstraint

- (instancetype)initWithType:(PPNeonConstraintType)type;

- (PPNeonViewConstraint * (^)(UIView *))relativeView;
- (PPNeonViewConstraint * (^)(PPNeonConstraintAlignType))alignType;
- (PPNeonViewConstraint * (^)(PPNeonConstraintEdgeCornerType))edgeCornerType;

@end



