//
//  PPNeonConstraint.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonConstraint.h"

@implementation PPNeonConstraint

#pragma mark - Public
- (PPNeonConstraint * (^)(CGFloat))xOffset {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGFloat))yOffset {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGSize))size {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGFloat))width {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGFloat))height {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGSize))superViewSize {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (PPNeonConstraint * (^)(CGFloat))scale {
    PPNeon_MethodNotImplemented();
    return nil;
}

- (CGRect (^)(void))install {
    return ^CGRect{
        return self.viewAttribute.frame;
    };
}

@end

@implementation PPNeonViewConstraint

- (instancetype)initWithType:(PPNeonConstraintType)type {
    self = [super init];
    if (self) {
        self.viewAttribute = [[PPNeonViewAttribute alloc] init];
        self.viewAttribute.constraintType = type;
    }
    return self;
}

- (PPNeonViewConstraint * (^)(UIView *))relativeView {
    return ^id(UIView *view) {
        self.viewAttribute.relativeView = view;
        return self;
    };
}

- (PPNeonViewConstraint *(^)(PPNeonConstraintAlignType))alignType {
    return ^id(PPNeonConstraintAlignType alignType) {
        self.viewAttribute.alignType = alignType;
        return self;
    };
}

- (PPNeonViewConstraint * (^)(PPNeonConstraintEdgeCornerType))edgeCornerType {
    return ^id(PPNeonConstraintEdgeCornerType edgeCornerType) {
        self.viewAttribute.edgeCornerType = edgeCornerType;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGFloat))xOffset {
    return ^id(CGFloat xOffset) {
        self.viewAttribute.xOffset = xOffset;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGFloat))yOffset {
    return ^id(CGFloat yOffset) {
        self.viewAttribute.yOffset = yOffset;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGSize))size {
    return ^id(CGSize size) {
        self.viewAttribute.width  = size.width;
        self.viewAttribute.height = size.height;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGFloat))width {
    return ^id(CGFloat width) {
        self.viewAttribute.width  = width;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGFloat))height {
    return ^id(CGFloat height) {
        self.viewAttribute.height = height;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGSize))superViewSize {
    return ^id(CGSize superViewSize) {
        self.viewAttribute.superViewSize  = superViewSize;
        return self;
    };
}

- (PPNeonConstraint * (^)(CGFloat))scale {
    return ^id(CGFloat scale) {
        self.viewAttribute.scale = scale;
        return self;
    };
}

@end
