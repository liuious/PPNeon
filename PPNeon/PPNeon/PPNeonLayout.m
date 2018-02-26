//
//  PPNeonLayout.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonLayout.h"
#import "PPNeonViewAttribute.h"

@interface PPNeon ()

@property (nonatomic, weak)   PPNeon_View *view;

@end

@implementation PPNeon

- (instancetype)initWithView:(PPNeon_View *)view {
    self = [super init];
    if (self) {
        self.view = view;
    }
    return self;
}

#pragma mark - Public
- (void)installNeon {
    [self.view setFrame:self.constraint.install()];
}

@end

/////////////////////////////////////////////////////////////////////////////////////////

@implementation PPNeonAlign

- (instancetype)initWithView:(UIView *)view {
    self = [super initWithView:view];
    if (self) {
        self.constraint = [[PPNeonViewConstraint alloc] initWithType:PPNeonConstraintType_Align];
        self.constraint.superViewSize(view.superview.frame.size);
    }
    return self;
}

#pragma mark - Public
- (void)installNeon {
    [super installNeon];
}

- (PPNeonConstraint * (^)(UIView *))above {
    return ^id(UIView *relativeView) {
        self.constraint = self.constraint.relativeView(relativeView);
        self.constraint.alignType(PPNeonConstraintAlignType_Above);
        return self.constraint;
    };
}

- (PPNeonConstraint * (^)(UIView *))under {
    return ^id(UIView *relativeView) {
        self.constraint = self.constraint.relativeView(relativeView);
        self.constraint.alignType(PPNeonConstraintAlignType_Under);
        return self.constraint;
    };
}

- (PPNeonConstraint * (^)(UIView *))left {
    return ^id(UIView *relativeView) {
        self.constraint = self.constraint.relativeView(relativeView);
        self.constraint.alignType(PPNeonConstraintAlignType_Left);
        return self.constraint;
    };
}

- (PPNeonConstraint * (^)(UIView *))right {
    return ^id(UIView *relativeView) {
        self.constraint = self.constraint.relativeView(relativeView);
        self.constraint.alignType(PPNeonConstraintAlignType_Right);
        return self.constraint;
    };
}

@end

/////////////////////////////////////////////////////////////////////////////////////////

@implementation PPNeonEdgeCorner

- (instancetype)initWithView:(UIView *)view {
    self = [super initWithView:view];
    if (self) {
        self.constraint = [[PPNeonViewConstraint alloc] initWithType:PPNeonConstraintType_EdgeCorner];
        self.constraint.superViewSize(view.superview.frame.size);
    }
    return self;
}

#pragma mark - Public
- (PPNeonConstraint *)topLeft {
    self.constraint.edgeCornerType(PPNeonConstraintEdgeCornerType_TopLeft);
    return self.constraint;
}

- (PPNeonConstraint *)topRight {
    self.constraint.edgeCornerType(PPNeonConstraintEdgeCornerType_TopRight);
    return self.constraint;
}

- (PPNeonConstraint *)bottomLeft {
    self.constraint.edgeCornerType(PPNeonConstraintEdgeCornerType_BottomLeft);
    return self.constraint;
}

- (PPNeonConstraint *)bottomRight {
    self.constraint.edgeCornerType(PPNeonConstraintEdgeCornerType_BottomRight);
    return self.constraint;
}

@end
