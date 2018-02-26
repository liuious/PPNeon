//
//  PPNeonViewAttribute.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonViewAttribute.h"
#import "PPNeonCoordinates.h"

@interface PPNeonViewAttribute ()

@end

@implementation PPNeonViewAttribute

- (instancetype)initWithRelativeView:(UIView *)relativeView {
    self = [super init];
    if (self) {
        self.relativeView = relativeView;
        _scale = 1.0f;
    }
    return self;
}

- (void)setAlignType:(PPNeonConstraintAlignType)alignType {
    _alignType  = alignType;
}

- (void)setEdgeCornerType:(PPNeonConstraintEdgeCornerType)edgeCornerType {
    _edgeCornerType = edgeCornerType;
}

- (void)setXOffset:(CGFloat)xOffset {
    _xOffset = xOffset;
}

- (void)setYOffset:(CGFloat)yOffset {
    _yOffset = yOffset;
}

- (void)setWidth:(CGFloat)width {
    _width = width;
}

- (void)setHeight:(CGFloat)height {
    _height = height;
}

- (CGFloat)scale {
    if (_scale <= 0.0f) _scale = 1.0f;
    return _scale;
}

- (CGRect)frame {
    CGFloat x = 0.0f;
    CGFloat y = 0.0f;
    if (_constraintType == PPNeonConstraintType_Align) {
        if (_alignType == PPNeonConstraintAlignType_Above) {
            x = self.relativeView.frame.origin.x + _xOffset;
            y = self.relativeView.frame.origin.y - _yOffset - _height;
        } else if (_alignType == PPNeonConstraintAlignType_Under) {
            x = self.relativeView.frame.origin.x + _xOffset;
            y = self.relativeView.frame.origin.y + self.relativeView.frame.size.height + _yOffset;
        } else if (_alignType == PPNeonConstraintAlignType_Left) {
            x = self.relativeView.frame.origin.x - _xOffset - _width;
            y = self.relativeView.frame.origin.y + _yOffset;
        } else if (_alignType == PPNeonConstraintAlignType_Right) {
            x = self.relativeView.frame.origin.x + self.relativeView.frame.size.width + _xOffset;
            y = self.relativeView.frame.origin.y + _yOffset;
        }
    } else if (_constraintType == PPNeonConstraintType_EdgeCorner) {
        if (_edgeCornerType == PPNeonConstraintEdgeCornerType_TopLeft) {
            x = _xOffset;
            y = _yOffset;
        } else if (_edgeCornerType == PPNeonConstraintEdgeCornerType_TopRight) {
            x = _superViewSize.width - _width - _xOffset;
            y = _yOffset;
        } else if (_edgeCornerType == PPNeonConstraintEdgeCornerType_BottomLeft) {
            x = _xOffset;
            y = _superViewSize.height - _height - _yOffset;
        } else if (_edgeCornerType == PPNeonConstraintEdgeCornerType_BottomRight) {
            x = _superViewSize.width - _width - _xOffset;
            y = _superViewSize.height - _height - _yOffset;
        }
    }
    return [PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(x, y, _width, _height) scale:self.scale];
}

@end
