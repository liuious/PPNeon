//
//  View+PPFrameable.m
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPFrameable.h"

@implementation PPNeon_View (PPFrameable)

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    [self setFrame:frame];
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    [self setFrame:frame];
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setCenterX:(CGFloat)centerX {
    [self setCenter:CGPointMake(centerX, self.center.y)];
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    [self setCenter:CGPointMake(self.center.x, centerY)];
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    [self setFrame:frame];
}

- (CGFloat)x {
    return CGRectGetMinX(self.frame);
}

- (void)setXMid:(CGFloat)xMid {
    CGRect frame = self.frame;
    frame.origin.x = xMid - self.width / 2.0f;
    [self setFrame:frame];
}

- (CGFloat)xMid {
    return CGRectGetMinX(self.frame) + (CGRectGetWidth(self.frame) / 2.0f);
}

- (void)setXMax:(CGFloat)xMax {
    CGRect frame = self.frame;
    frame.origin.x = xMax - self.width;
    [self setFrame:frame];
}

- (CGFloat)xMax {
    return CGRectGetMaxX(self.frame);
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    [self setFrame:frame];
}

- (CGFloat)y {
    return CGRectGetMinY(self.frame);
}

- (void)setYMid:(CGFloat)yMid {
    CGRect frame = self.frame;
    frame.origin.y = yMid - self.height / 2.0f;
    [self setFrame:frame];
}

- (CGFloat)yMid {
    return CGRectGetMinY(self.frame) + (CGRectGetHeight(self.frame) / 2.0f);
}

- (void)setYMax:(CGFloat)yMax {
    CGRect frame = self.frame;
    frame.origin.y = yMax - self.height;
    [self setFrame:frame];
}

- (CGFloat)yMax {
    return CGRectGetMaxY(self.frame);
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    [self setFrame:frame];
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    [self setFrame:frame];
}

- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    [self setFrame:frame];
}

- (CGFloat)top {
    return self.y;
}

- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    [self setFrame:frame];
}

- (CGFloat)left {
    return self.x;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    [self setFrame:frame];
}

- (CGFloat)bottom {
    return self.y + self.height;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    [self setFrame:frame];
}

- (CGFloat)right {
    return self.x + self.width;
}

@end
