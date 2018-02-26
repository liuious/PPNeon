//
//  View+PPAlignable.m
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPAlignable.h"
#import "View+PPNeon.h"

@implementation PPNeon_View (PPAlignable)

- (void)align:(PPAlign)align
   relativeTo:(PPNeon_View *)sibling
      padding:(CGFloat)padding
        width:(CGFloat)width
       height:(CGFloat)height {
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).size(CGSizeMake(width, height));
            }];
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(sibling.height - height).size(CGSizeMake(width, height));
            }];
        }
            break;
        case PPAlignToTheRightCentered:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset((sibling.height - height) / 2).size(CGSizeMake(width, height));
            }];
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).size(CGSizeMake(width, height));
            }];
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(sibling.height - height).size(CGSizeMake(width, height));
            }];
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset((sibling.height - height) / 2).width(width).height(height);
            }];
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.under(sibling).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(sibling.width - width).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignUnderCentered:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.under(sibling).xOffset((sibling.width - width) / 2).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.above(sibling).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(sibling.width - width).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveCentered:
        {
            [self pp_neonMakeAlign:^(id <PPNeonAlignLayout> align) {
                align.above(sibling).xOffset((sibling.width - width) / 2).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        default:
        {
            PPASSERT(FALSE);
        }
            break;
    }
}

- (void)alignAndFillWidth:(PPAlign)align
               relativeTo:(PPNeon_View *)sibling
                  padding:(CGFloat)padding
                   height:(CGFloat)height {
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(0).width(self.superview.width - sibling.xMax - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(sibling.height - height).width(self.superview.width - sibling.xMax - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignToTheRightCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset((sibling.height - height) / 2).width(self.superview.width - sibling.xMax - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(0).width(sibling.x - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(sibling.height - height).width(sibling.x - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset((sibling.height - height) / 2).width(sibling.x - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(0).yOffset(padding).width(self.superview.width - sibling.x - padding).height(height);
            }];
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(sibling.xMax - padding).height(height);
            }];
        }
            break;
        case PPAlignUnderCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(self.superview.width - 2 * padding).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(0).yOffset(padding).width(self.superview.width - sibling.x - padding).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(sibling.xMax - padding).height(height);
            }];
        }
            break;
        case PPAlignAboveCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(self.superview.width - 2 * padding).height(height);
            }];
        }
            break;
        default:
        {
            PPASSERT(FALSE);
        }
            break;
    }
}

- (void)alignAndFillHeight:(PPAlign)align
                relativeTo:(PPNeon_View *)sibling
                   padding:(CGFloat)padding
                     width:(CGFloat)width {
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(0).width(width).height(self.superview.height - sibling.y - padding);
            }];
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).height(sibling.yMax - padding).width(width);
            }];
        }
            break;
        case PPAlignToTheRightCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).height(self.superview.height - 2 * padding).width(width);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(0).width(width).height(self.superview.height - sibling.y - padding);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(width).height(sibling.yMax - padding);
            }];
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(width).height(self.superview.height - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(0).yOffset(padding).width(width).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(sibling.width - width).yOffset(padding).width(width).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset((sibling.width - width) / 2.0f).yOffset(padding).width(width).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(0).yOffset(padding).width(width).height(sibling.y - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(sibling.width - width).yOffset(padding).width(width).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset((sibling.width - width) / 2.0f).yOffset(padding).width(width).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        default:
        {
            PPASSERT(FALSE);
        }
            break;
    }
}

- (void)alignAndFill:(PPAlign)align
          relativeTo:(PPNeon_View *)sibling
             padding:(CGFloat)padding {
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(0).width(self.superview.width - sibling.xMax - 2 * padding).height(self.superview.height - sibling.y - padding);
            }];
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(self.superview.width - sibling.xMax - 2 * padding).height(sibling.yMax - padding);
            }];
        }
            break;
        case PPAlignToTheRightCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(self.superview.width - sibling.xMax - 2 * padding).height(self.superview.height - 2 * padding);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(0).width(sibling.x - 2 * padding).height(self.superview.height - sibling.y - padding);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(sibling.x - 2 * padding).height(sibling.yMax - padding);
            }];
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(sibling).xOffset(padding).yOffset(-(sibling.y - padding)).width(sibling.x - 2 * padding).height(self.superview.height - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(0).yOffset(padding).width(self.superview.width - sibling.x - padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(sibling.xMax - padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignUnderCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(self.superview.width - 2 * padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(0).yOffset(padding).width(self.superview.width - sibling.x - padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(sibling.xMax - padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        case PPAlignAboveCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(sibling).xOffset(-(sibling.x - padding)).yOffset(padding).width(self.superview.width - 2 * padding).height(self.superview.height - sibling.yMax - 2 * padding);
            }];
        }
            break;
        default:
        {
            PPNeonNSLog(@"%@:  UIView+PPAlignable     Invalid Align specified for alignAndFill", PPNeonName);
            PPASSERT(FALSE);
        }
            break;
    }
}

- (void)alignBetweenHorizontal:(PPAlign)align
                   primaryView:(PPNeon_View *)primaryView
                 secondaryView:(PPNeon_View *)secondaryView
                       padding:(CGFloat)padding
                        height:(CGFloat)height {
    CGFloat width = self.superview.width - primaryView.xMax - (self.superview.width - secondaryView.x) - 2 * padding;
    if (width < 0) width = -1 * width;
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(primaryView).xOffset(padding).yOffset(0).width(width).height(height);
            }];
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(primaryView).xOffset(padding).yOffset(-(height - primaryView.height)).width(width).height(height);
            }];
        }
            break;
        case PPAlignToTheRightCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.right(primaryView).xOffset(padding).yOffset((primaryView.height - height) / 2).width(width).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(primaryView).xOffset(padding).yOffset(0).width(width).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(primaryView).xOffset(padding).yOffset(-(height - primaryView.height)).width(width).height(height);
            }];
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.left(primaryView).xOffset(padding).yOffset((primaryView.height - height) / 2).width(width).height(height);
            }];
        }
            break;
        default:
        {
            PPNeonNSLog(@"%@:  UIView+PPAlignable     Invalid Align specified for alignBetweenHorizonal", PPNeonName);
            PPASSERT(FALSE);
        }
            break;
    }
}

- (void)alignBetweenHorizontal:(PPAlign)align
                   primaryView:(PPNeon_View *)primaryView
                 secondaryView:(PPNeon_View *)secondaryView {
    CGFloat betweenViewWidth = self.superview.width - primaryView.xMax - (self.superview.width - secondaryView.x);
    if (betweenViewWidth < 0) betweenViewWidth = -1 * betweenViewWidth;
    CGFloat padding = (betweenViewWidth - self.width) / 2;
    if (padding < 0.0f) {
        PPNeonNSLog(@"%@:  UIView+PPAlignable     alignBetweenHorizontal betweenViewWidth < self.width  and  padding < 0", PPNeonName);
        return ;
    }
    [self alignBetweenHorizontal:align primaryView:primaryView secondaryView:secondaryView padding:padding height:self.height];
}

- (void)alignBetweenVertical:(PPAlign)align
                 primaryView:(PPNeon_View *)primaryView
               secondaryView:(PPNeon_View *)secondaryView
                     padding:(CGFloat)padding
                       width:(CGFloat)width {
    CGFloat height = self.superview.height - primaryView.yMax - (self.superview.height - secondaryView.y) - 2 * padding;
    if (height < 0) height = -1 * height;
    
    switch (align) {
        case PPAlignUnderMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(primaryView).xOffset(0).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(primaryView).xOffset(primaryView.width - width).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignUnderCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.under(primaryView).xOffset((primaryView.width - width) / 2).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(primaryView).xOffset(0).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(primaryView).xOffset(primaryView.width - width).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        case PPAlignAboveCentered:
        {
            [self pp_neonMakeAlign:^(id<PPNeonAlignLayout> align) {
                align.above(primaryView).xOffset((primaryView.width - width) / 2).yOffset(padding).width(width).height(height);
            }];
        }
            break;
        default:
        {
            PPNeonNSLog(@"%@:  UIView+PPAlignable     Invalid Align specified for alignBetweenVertical", PPNeonName);
        }
            break;
    }
}

- (void)alignBetweenVertical:(PPAlign)align
                 primaryView:(PPNeon_View *)primaryView
               secondaryView:(PPNeon_View *)secondaryView {
    CGFloat betweenViewHeight = self.superview.height - primaryView.yMax - (self.superview.height - secondaryView.y);
    if (betweenViewHeight < 0) betweenViewHeight = -1 * betweenViewHeight;
    CGFloat padding = (betweenViewHeight - self.height) / 2;
    if (padding < 0.0f) {
        PPNeonNSLog(@"%@:  UIView+PPAlignable     alignBetweenVertical betweenViewHeight < self.height  and  padding < 0", PPNeonName);
        return ;
    }
    [self alignBetweenVertical:align primaryView:primaryView secondaryView:secondaryView padding:0.0f width:self.width];
}

@end
