//
//  View+PPAnchorable.h
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPFrameable.h"

@interface PPNeon_View (PPAnchorable)

/**
 *  Fill the superview, with optional padding values
 *
 *  @param left   the padding between the left side of the view and the superview
 *  @param right  right
 *  @param top    top
 *  @param bottom bottom
 */
- (void)fillSuperview:(CGFloat)left
                right:(CGFloat)right
                  top:(CGFloat)top
               bottom:(CGFloat)bottom;

/**
 *  Anchor a view in the center of its superview.
 *
 *  @param width  The width of the view
 *  @param height The height of the view
 */
- (void)anchorInCenter:(CGFloat)width
                height:(CGFloat)height;

/**
 *  Anchor a view in one of the four corners of its superview.
 *
 *  @param corner The corner value used to specify in which corner the view will be anchored
 *  @param xPad   The horizontal padding applied to the view inside its superview, which can be applied to the left or right side of the view, depending upon the corner specified.
 *  @param yPad   The vertical padding applied to the view inside its superview, which can be applied to the left or right side of the view, depending upon the corner specified.
 *  @param width  The width of the view
 *  @param height The height of the view
 */
- (void)anchorInCorner:(PPCorner)corner
                  xPad:(CGFloat)xPad
                  yPad:(CGFloat)yPad
                 width:(CGFloat)width
                height:(CGFloat)height;

/**
 *  Anchor a view in its superview, centered on a given edge.
 *
 *  @param edge    The `Edge` used to specify which face of the superview the view will be anchored against and centered relative to.
 *  @param padding The padding applied to the view inside its superview. How this padding is applied will vary depending on the `Edge` provided. Views centered against the top or bottom of their superview will have the padding applied above or below them respectively, whereas views centered against the left or right side of their superview will have the padding applied to the right and left sides respectively.  (padding是 view 的偏移)
 *  @param width   The width of the view
 *  @param height  The height of the view
 */
- (void)anchorToEdge:(PPEdge)edge
             padding:(CGFloat)padding
               width:(CGFloat)width
              height:(CGFloat)height;

/**
 *  Anchor a view in its superview, centered on a given edge and filling either the width or height of that edge. For example, views anchored to the `.Top` or `.Bottom` will have their widths automatically sized to fill their superview, with the xPad applied to both the left and right sides of the view.
 *
 *  @param edge      The `Edge` used to specify which face of the superview the view will be anchored against, centered relative to, and expanded to fill.
 *  @param xPad      The horizontal padding applied to the view inside its superview. If the `Edge` specified is `.Top` or `.Bottom`, this padding will be applied to the left and right sides of the view when it fills the width superview.
 *  @param yPad      The vertical padding applied to the view inside its superview. If the `Edge` specified is `.Left` or `.Right`, this padding will be applied to the top and bottom sides of the view when it fills the height of the superview.
 *  @param otherSize The size parameter that is *not automatically calculated* based on the provided edge. For example, views anchored to the `.Top` or `.Bottom` will have their widths automatically calculated, so `otherSize` will be applied to their height, and subsequently views anchored to the `.Left` and `.Right` will have `otherSize` applied to their width as their heights are automatically calculated.
 */
- (void)anchorAndFillEdge:(PPEdge)edge
                     xPad:(CGFloat)xPad
                     yPad:(CGFloat)yPad
                otherSize:(CGFloat)otherSize;

@end
