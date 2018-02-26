//
//  View+PPFrameable.h
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonUtilities.h"

@interface PPNeon_View (PPFrameable)

/**
 *  Readwrite the origin of a view.
 */
@property (nonatomic, assign, readwrite) CGPoint origin;

/**
 *  Readwrite the size of a view.
 */
@property (nonatomic, assign, readwrite) CGSize size;

/**
 *  Readwrite the cneterX of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat centerX;

/**
 *  Readwrite the centerY of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat centerY;

/**
 *  Readwrite the x of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat x;

/**
 *  Readwrite the xMid of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat xMid;

/**
 *  Readwrite the xMax of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat xMax;

/**
 *  Readwrite the y of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat y;

/**
 *  Readwrite the yMid of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat yMid;

/**
 *  Readwrite the yMax of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat yMax;

/**
 *  Readwrite the width of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat width;

/**
 *  Readwrite the height of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat height;

/**
 *  Readwrite the top of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat top;

/**
 *  Readwrite the left of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat left;

/**
 *  Readwrite the bottom of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat bottom;

/**
 *  Readwrite the right of a view.
 */
@property (nonatomic, assign, readwrite) CGFloat right;


@end
