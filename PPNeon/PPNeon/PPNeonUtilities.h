//
//  PPNeonUtilities.h
//  PPNeon <https://github.com/silencedev/PPNeon>
//
//  Created by silencedev on 16/4/14.
//  Copyright © 2016年 silencedev. All rights reserved.
//
//  This source code is licensed under the MIT-style license found in the
//  LICENSE file in the root directory of this source tree.
//

#ifndef PPNeonUtilities_h
#define PPNeonUtilities_h

#define PPNeonVersion 0.0.2

#define PPNeonName @"PPNeon"

#define PPNeonShowLog 1

#if (defined DEBUG) || (defined _DEBUG) || PPNeonShowLog

    # define PPNeonNSLog(...) NSLog(__VA_ARGS__)

#else

    # define PPNeonNSLog(...) {}

#endif

#if (defined DEBUG) || (defined _DEBUG)

#define PPASSERT(exp) assert(exp)

#else

#define PPASSERT(exp)

#endif

//#if TARGET_OS_IPHONE || TARGET_OS_TV
//
//    #import <UIKit/UIKit.h>
//    #define PPNeon_View UIView
//
//#elif TARGET_OS_MAC
//
//    #import <AppKit/AppKit.h>
//    #define PPNeon_View NSView
//
//#endif

#import <UIKit/UIKit.h>
#define PPNeon_View UIView

#ifndef PPMacro

    #define PPNeon_SWAP(_a_, _b_)  do { __typeof__(_a_) _tmp_ = (_a_); (_a_) = (_b_); (_b_) = _tmp_; } while (0)
    #define PPNeon_MAX(_a_, _b_)   _a_ >= _b_ ? _a_ : _b_
    #define PPNeon_MIN(_a_, _b_)   _a_ <= _b_ ? _a_ : _b_

    #define PPNeon_MethodNotImplemented() \
         @throw [NSException exceptionWithName:NSInternalInconsistencyException \
                                        reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
                                      userInfo:nil]

#endif


/**
 =======================================================
 
      PPCornerTopLeft    PPCornerTopRight
            o-------------------o
            |                   |
            |                   |
            |                   |
            |                   |
            |                   |
            |                   |
            |                   |
            o-------------------o
   PPCornerBottomLeft     PPCornerBottomRight
 
 =======================================================
 **/

/**
 *  Specifies a corner of a frame.
 */
typedef NS_ENUM(NSUInteger, PPCorner) {
    /**
     *  The upper-left corner of the frame.
     */
    PPCornerTopLeft,
    /**
     *  The upper-right corner of the frame.
     */
    PPCornerTopRight,
    /**
     *  The bottom-left corner of the frame.
     */
    PPCornerBottomLeft,
    /**
     *  The upper-right corner of the frame.
     */
    PPCornerBottomRight,
};

/**
 =======================================================
 
                 PPEdgeTop
            o-------------------o
            |                   |
            |                   |
            |                   |
PPEdgeLeft |                   |  PPEdgeRight
            |                   |
            |                   |
            |                   |
            o-------------------o
                PPEdgeBottom
 
 =======================================================
 **/

/**
 *  Specifies an edge, or face, of a frame.
 */
typedef NS_ENUM(NSUInteger, PPEdge) {
    /**
     *  The top edge of the frame.
     */
    PPEdgeTop,
    /**
     *  The left edge of the frame.
     */
    PPEdgeLeft,
    /**
     *  The bottom edge of the frame.
     */
    PPEdgeBottom,
    /**
     *  The right edge of the frame.
     */
    PPEdgeRight,
};


/**
 =======================================================
         alignToTheRightMatchingTop
        o-------o       o---o
        |       |       | B |
        |   A   |       o---o
        |       |
        o-------o
 
 =======================================================
 **/

/**
 *  Specifies how a view will be aligned relative to the sibling view.
 */
typedef NS_ENUM(NSUInteger, PPAlign) {
    /**
     *  Specifies that the view should be aligned to the right of a sibling, matching the top, or y origin, of the sibling's frame.
     */
    PPAlignToTheRightMatchingTop,
    /**
     *  Specifies that the view should be aligned to the right of a sibling, matching the bottom, or max y value, of the sibling's frame.
     */
    PPAlignToTheRightMatchingBottom,
    /**
     *  Specifies that the view should be aligned to the right of a sibling, and will be centered to either match the vertical center of the sibling's frame or centered vertically within the superview, depending on the context.
     */
    PPAlignToTheRightCentered,
    /**
     *  Specifies that the view should be aligned to the left of a sibling, matching the top, or y origin, of the sibling's frame.
     */
    PPAlignToTheLeftMatchingTop,
    /**
     *  Specifies that the view should be aligned to the left of a sibling, matching the bottom, or max y value, of the sibling's frame.
     */
    PPAlignToTheLeftMatchingBottom,
    /**
     *  Specifies that the view should be aligned to the left of a sibling, and will be centered to either match the vertical center of the sibling's frame or centered vertically within the superview, depending on the context.
     */
    PPAlignToTheLeftCentered,
    /**
     *  Specifies that the view should be aligned under a sibling, matching the left, or x origin, of the sibling's frame.
     */
    PPAlignUnderMatchingLeft,
    /**
     *  Specifies that the view should be aligned under a sibling, matching the right, or max y of the sibling's frame.
     */
    PPAlignUnderMatchingRight,
    /**
     *  Specifies that the view should be aligned under a sibling, and will be centered to either match the horizontal center of the sibling's frame or centered horizontally within the superview, depending on the context.
     */
    PPAlignUnderCentered,
    /**
     *  Specifies that the view should be aligned above a sibling, matching the left, or x origin of the sibling's frame.
     */
    PPAlignAboveMatchingLeft,
    /**
     *  Specifies that the view should be aligned above a sibling, matching the right, or max x of the sibling's frame.
     */
    PPAlignAboveMatchingRight,
    /**
     *  Specifies that the view should be aligned above a sibling, and will be centered to either match the horizontal center of the sibling's frame or centered horizontally within the superview, depending on the context.
     */
    PPAlignAboveCentered,
};

/**
 *  Specifies how a group will be laid out.
 */
typedef NS_ENUM(NSUInteger, PPGroup) {
    /**
     *  Specifies that the views should be aligned relative to eachother horizontally.
     */
    PPGroupHorizontal,
    /**
     *  Specifies that the views should be aligned relative to eachother vertically.
     */
    PPGroupVertical,
};


#endif /* PPNeonUtilities_h */
