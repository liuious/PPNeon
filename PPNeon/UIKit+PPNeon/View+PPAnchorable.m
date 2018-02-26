//
//  View+PPAnchorable.m
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPAnchorable.h"
#import "View+PPNeon.h"

@implementation PPNeon_View (PPAnchorable)

- (void)fillSuperview:(CGFloat)left
                right:(CGFloat)right
                  top:(CGFloat)top
               bottom:(CGFloat)bottom {
    CGFloat width = self.superview.width - (left + right);
    CGFloat height = self.superview.height - (top + bottom);
    [self setFrame:CGRectMake(left, top, width, height)];
}

- (void)anchorInCenter:(CGFloat)width
                height:(CGFloat)height {
    CGFloat xOrigin = (self.superview.width / 2.0f) - (width / 2.0f);
    CGFloat yOrigin = (self.superview.height / 2.0f) - (height / 2.0f);
    [self setFrame:CGRectMake(xOrigin, yOrigin, width, height)];
}

- (void)anchorInCorner:(PPCorner)corner
                  xPad:(CGFloat)xPad
                  yPad:(CGFloat)yPad
                 width:(CGFloat)width
                height:(CGFloat)height {
    if (corner == PPCornerTopLeft) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topLeft.xOffset(xPad).yOffset(yPad).width(width).height(height);
        }];
    } else if (corner == PPCornerTopRight) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topRight.xOffset(xPad).yOffset(yPad).width(width).height(height);
        }];
    } else if (corner == PPCornerBottomLeft) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.bottomLeft.xOffset(xPad).yOffset(yPad).width(width).height(height);
        }];
    } else if (corner == PPCornerBottomRight) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.bottomRight.xOffset(xPad).yOffset(yPad).width(width).height(height);
        }];
    } else {
        PPASSERT(FALSE);
    }
}

- (void)anchorToEdge:(PPEdge)edge
             padding:(CGFloat)padding
               width:(CGFloat)width
              height:(CGFloat)height {
    if (edge == PPEdgeTop) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topRight.xOffset((self.superview.width - width) / 2.0f).yOffset(padding).width(width).height(height);
        }];
    } else if (edge == PPEdgeLeft) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topLeft.xOffset(padding).yOffset((self.superview.height - height) / 2.0f).width(width).height(height);
        }];
    } else if (edge == PPEdgeBottom) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.bottomLeft.xOffset((self.superview.width - width) / 2.0f).yOffset(padding).width(width).height(height);
        }];
    } else if (edge == PPEdgeRight) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.bottomRight.xOffset(padding).yOffset((self.superview.height - height) / 2.0f).width(width).height(height);
        }];
    } else {
        PPASSERT(FALSE);
    }
}

- (void)anchorAndFillEdge:(PPEdge)edge
                     xPad:(CGFloat)xPad
                     yPad:(CGFloat)yPad
                otherSize:(CGFloat)otherSize {
    if (edge == PPEdgeTop) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topLeft.xOffset(xPad).yOffset(yPad).width(self.superview.width - 2 * xPad).height(otherSize);
        }];
    } else if (edge == PPEdgeLeft) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topLeft.xOffset(xPad).yOffset(yPad).width(otherSize).height(self.superview.height - 2 * yPad);
        }];
    } else if (edge == PPEdgeBottom) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.bottomLeft.xOffset(xPad).yOffset(yPad).width(self.superview.width - 2 * xPad).height(otherSize);
        }];
    } else if (edge == PPEdgeRight) {
        [self pp_neonMakeEdgeCorner:^(id<PPNeonCornerLayout> edgeCorner) {
            edgeCorner.topRight.xOffset(xPad).yOffset(yPad).width(otherSize).height(self.superview.height - 2 * yPad);
        }];
    } else {
        PPASSERT(FALSE);
    }
}

@end
