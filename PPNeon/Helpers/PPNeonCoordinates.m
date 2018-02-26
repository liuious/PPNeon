//
//  PPNeonCoordinates.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonCoordinates.h"

static CGFloat p_roundFloatToDisplayScale(CGFloat point, CGFloat scale) {
    CGFloat tempPoint = (CGFloat)(roundf((CGFloat)(point * scale)) / scale);
    return tempPoint;
}

static CGFloat p_ceilFloatToDisplayScale(CGFloat point, CGFloat scale) {
    CGFloat tempPoint = (CGFloat)(ceilf((CGFloat)(point * scale)) / scale);
    return tempPoint;
}

@implementation PPNeonCoordinates

+ (CGRect)pp_adjustRectToDisplayScale:(CGRect)rect scale:(CGFloat)scale {
    return CGRectMake(p_roundFloatToDisplayScale(rect.origin.x, scale),
                      p_roundFloatToDisplayScale(rect.origin.y, scale),
                      p_ceilFloatToDisplayScale(rect.size.width, scale),
                      p_ceilFloatToDisplayScale(rect.size.height, scale));
}

+ (CGFloat)pp_roundFloatToDisplayScale:(CGFloat)point scale:(CGFloat)scale {
    return p_roundFloatToDisplayScale(point, scale);
}

+ (CGFloat)pp_ceilFloatToDisplayScale:(CGFloat)point scale:(CGFloat)scale {
    return p_ceilFloatToDisplayScale(point, scale);
}

@end
