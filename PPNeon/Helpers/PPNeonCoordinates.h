//
//  PPNeonCoordinates.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonUtilities.h"

@interface PPNeonCoordinates : NSObject

+ (CGRect)pp_adjustRectToDisplayScale:(CGRect)rect scale:(CGFloat)scale;

+ (CGFloat)pp_roundFloatToDisplayScale:(CGFloat)point scale:(CGFloat)scale;

+ (CGFloat)pp_ceilFloatToDisplayScale:(CGFloat)point scale:(CGFloat)scale;

@end
