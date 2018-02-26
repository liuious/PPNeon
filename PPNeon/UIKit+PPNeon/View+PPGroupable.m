//
//  View+PPGroupable.m
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPGroupable.h"
#import "PPNeonCoordinates.h"

@implementation PPNeon_View (PPGroupable)

- (void)groupInCenter:(PPGroup)group
                views:(NSArray *)views
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupInCenter", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat xAdjust = 0.0f;
    CGFloat yAdjust = 0.0f;
    
    switch (group) {
        case PPGroupHorizontal:
        {
            xOrigin = (self.width - views.count * width - (views.count - 1) * padding) / 2.0f;
            yOrigin = (self.height / 2.0f) - (height / 2.0f);
            xAdjust = width + padding;
        }
            break;
        case PPGroupVertical:
        {
            xOrigin = (self.width / 2.0f) - (width / 2.0f);
            yOrigin = (self.height - views.count * height - (views.count - 1) * padding) / 2.0f;
            yAdjust = height + padding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
        yOrigin += yAdjust;
    }
}

- (void)groupAndFill:(PPGroup)group
               views:(NSArray *)views
             padding:(CGFloat)padding {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndFill", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = padding;
    CGFloat yOrigin = padding;
    CGFloat xAdjust = 0.0f;
    CGFloat yAdjust = 0.0f;
    CGFloat width = 0.0f;
    CGFloat height = 0.0f;
    
    switch (group) {
        case PPGroupHorizontal:
        {
            width = (self.width - (views.count + 1) * padding) / views.count;
            height = self.height - 2 * padding;
            xAdjust = width + padding;
        }
            break;
        case PPGroupVertical:
        {
            width = self.width - 2 * padding;
            height = (self.height - (views.count + 1) * padding) / views.count;
            yAdjust = height + padding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
        yOrigin += yAdjust;
    }
}

- (void)groupAndFill:(PPGroup)group
               views:(NSArray *)views
             padding:(CGFloat)padding
               width:(CGFloat)width
              height:(CGFloat)height {
    if (views.count < 1) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndFill", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = padding;
    CGFloat yOrigin = padding;
    CGFloat xAdjust = 0.0f;
    CGFloat yAdjust = 0.0f;
    CGFloat viewsPadding = 0.0f;
    
    switch (group) {
        case PPGroupHorizontal:
        {
            viewsPadding = (self.width - 2 * padding - width * views.count) / (views.count - 1);
            xAdjust = width + viewsPadding;
        }
            break;
        case PPGroupVertical:
        {
            viewsPadding = (self.height - 2 * padding - width * views.count) / (views.count - 1);
            yAdjust = height + viewsPadding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
        yOrigin += yAdjust;
    }
}

- (void)groupAgainstEdge:(PPGroup)group
                   views:(NSArray *)views
             againstEdge:(PPEdge)edge
                 padding:(CGFloat)padding
                   width:(CGFloat)width
                  height:(CGFloat)height {
    switch (group) {
        case PPGroupHorizontal:
        {
            [self _groupAgainstEdgeHorizontal:views
                                  againstEdge:edge
                                      padding:padding
                                        width:width
                                       height:height];
        }
            break;
        case PPGroupVertical:
        {
            [self _groupAgainstEdgeVertical:views
                                againstEdge:edge
                                    padding:padding
                                      width:width
                                     height:height];
        }
    }
}

- (void)groupInCorner:(PPGroup)group
                views:(NSArray *)views
             inCorner:(PPCorner)corner
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height {
    switch (group) {
        case PPGroupHorizontal:
        {
            [self _groupInCornerHorizontal:views
                                  inCorner:corner
                                   padding:padding
                                     width:width
                                    height:height];
        }
            break;
        case PPGroupVertical:
        {
            [self _groupInCornerVertical:views
                                inCorner:corner
                                 padding:padding
                                   width:width
                                  height:height];
        }
            break;
    }
}

- (void)groupAndAlign:(PPGroup)group
             andAlign:(PPAlign)align
                viwes:(NSArray *)views
           relativeTo:(PPNeon_View *)sibling
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height {
    if (group == PPGroupHorizontal) {
        [self _groupAndAlignHorizontal:align
                                 views:views
                            relativeTo:sibling
                               padding:padding
                                 width:width
                                height:height];
    } else if (group == PPGroupVertical) {
        [self _groupAndAlignVertical:align
                              viedws:views
                          relativeTo:sibling
                             padding:padding
                               width:width
                              height:height];
    }
}

- (void)groupAndAlign:(PPGroup)group
             andAlign:(PPAlign)align
                viwes:(NSArray *)views
         viewsPadding:(CGFloat)viewsPadding
           relativeTo:(PPNeon_View *)sibling
              padding:(CGFloat)padding
             maxWidth:(CGFloat)maxWidth
            maxHeight:(CGFloat)maxHeight {
    if (group == PPGroupHorizontal) {
        [self _groupAndAlignHorizontal:align
                                 views:views
                          viewsPadding:viewsPadding
                            relativeTo:sibling
                               padding:padding
                             maxHeight:maxHeight];
    } else if (group == PPGroupVertical) {
        [self _groupAndAlignVertical:align
                              viedws:views
                        viewsPadding:viewsPadding
                          relativeTo:sibling
                             padding:padding
                            maxWidth:maxWidth];
    }
}

#pragma mark - private method
- (void)_groupAgainstEdgeHorizontal:(NSArray *)views
                        againstEdge:(PPEdge)edge
                            padding:(CGFloat)padding
                              width:(CGFloat)width
                             height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAgainstEdgeHorizontal", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat xAdjust = width + padding;
    
    switch (edge) {
        case PPEdgeTop:
        {
            xOrigin = (self.width - views.count * width - (views.count - 1) * padding) / 2.0f;
            yOrigin = padding;
        }
            break;
        case PPEdgeLeft:
        {
            xOrigin = padding;
            yOrigin = self.height / 2.0f - height / 2.0f;
        }
            break;
        case PPEdgeBottom:
        {
            xOrigin = (self.width - views.count * width - (views.count - 1) * padding) / 2.0f;
            yOrigin = self.height - height - padding;
        }
            break;
        case PPEdgeRight:
        {
            xOrigin = self.width - views.count * width - views.count * padding;
            yOrigin = self.height / 2.0f - height / 2.0f;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
    }
}

- (void)_groupAgainstEdgeVertical:(NSArray *)views
                      againstEdge:(PPEdge)edge
                          padding:(CGFloat)padding
                            width:(CGFloat)width
                           height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAgainstEdgeVertical", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat yAdjust = height + padding;
    
    switch (edge) {
        case PPEdgeTop:
        {
            xOrigin = self.width / 2.0f - width / 2.0f;
            yOrigin = padding;
        }
            break;
        case PPEdgeLeft:
        {
            xOrigin = padding;
            yOrigin = (self.height - views.count * height - (views.count - 1) * padding) / 2.0f;
        }
            break;
        case PPEdgeBottom:
        {
            xOrigin = self.width / 2.0f - width / 2.0f;
            yOrigin = self.height - views.count * height - views.count * padding;
        }
            break;
        case PPEdgeRight:
        {
            xOrigin = self.width - width - padding;
            yOrigin = (self.height - views.count * height - (views.count - 1) * padding) / 2.0f;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        yOrigin += yAdjust;
    }
}

- (void)_groupInCornerHorizontal:(NSArray *)views
                        inCorner:(PPCorner)corner
                         padding:(CGFloat)padding
                           width:(CGFloat)width
                          height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupInCornerHorizontal", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat xAdjust = width + padding;
    
    switch (corner) {
        case PPCornerTopLeft:
        {
            xOrigin = padding;
            yOrigin = padding;
        }
            break;
        case PPCornerTopRight:
        {
            xOrigin = self.width - views.count * width - views.count * padding;
            yOrigin = padding;
        }
            break;
        case PPCornerBottomLeft:
        {
            xOrigin = padding;
            yOrigin = self.height - height - padding;
        }
            break;
        case PPCornerBottomRight:
        {
            xOrigin = self.width - views.count * width - views.count * padding;
            yOrigin = self.height - height - padding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
    }
}

- (void)_groupInCornerVertical:(NSArray *)views
                      inCorner:(PPCorner)corner
                       padding:(CGFloat)padding
                         width:(CGFloat)width
                        height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupInCornerVertical", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat yAdjust = height + padding;
    
    switch (corner) {
        case PPCornerTopLeft:
        {
            xOrigin = padding;
            yOrigin = padding;
        }
            break;
        case PPCornerTopRight:
        {
            xOrigin = self.width - width - padding;
            yOrigin = padding;
        }
            break;
        case PPCornerBottomLeft:
        {
            xOrigin = padding;
            yOrigin = self.height - views.count * height - views.count * padding;
        }
            break;
        case PPCornerBottomRight:
        {
            xOrigin = self.width - width - padding;
            yOrigin = self.height - views.count * height - views.count * padding;
        }
            break;
    }
    
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        yOrigin += yAdjust;
    }
}

- (void)_groupAndAlignHorizontal:(PPAlign)align
                           views:(NSArray *)views
                      relativeTo:(PPNeon_View *)sibling
                         padding:(CGFloat)padding
                           width:(CGFloat)width
                          height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndAlignHorizontal", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat xAdjust = width + padding;
    
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMax - height;
        }
            break;
        case PPAlignToTheRightCentered:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMid - (height / 2.0f);
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            xOrigin = sibling.x - views.count * width - views.count * padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            xOrigin = sibling.x - views.count * width - views.count * padding;
            yOrigin = sibling.yMax - height;
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            xOrigin = sibling.x - views.count * width - views.count * padding;
            yOrigin = sibling.yMid - (height / 2.0f);
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            xOrigin = sibling.xMax - views.count * width - (views.count - 1) * padding;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderCentered:
        {
            xOrigin = sibling.xMid - (views.count * width + (views.count - 1) * padding) / 2.0f;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.y - height - padding;
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            xOrigin = sibling.xMax - views.count * width - (views.count - 1) * padding;
            yOrigin = sibling.y - height - padding;
        }
            break;
        case PPAlignAboveCentered:
        {
            xOrigin = sibling.xMid - (views.count * width + (views.count - 1) * padding) / 2.0f;
            yOrigin = sibling.y - height - padding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        xOrigin += xAdjust;
    }
}

- (void)_groupAndAlignHorizontal:(PPAlign)align
                           views:(NSArray *)views
                    viewsPadding:(CGFloat)viewsPadding
                      relativeTo:(PPNeon_View *)sibling
                         padding:(CGFloat)padding
                       maxHeight:(CGFloat)maxHeight {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndAlignHorizontal", PPNeonName);
        return;
    }
    
    PPNeon_View *firstView = views.firstObject;
    NSAssert([firstView isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
    CGFloat width   = firstView.width;
    CGFloat height  = PPNeon_MIN(firstView.height, maxHeight);
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat xAdjust = width + padding;
    CGFloat allViewWidth = 0.0f;
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        allViewWidth += view.width;
    }
    
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMax - height;
        }
            break;
        case PPAlignToTheRightCentered:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMid - (height / 2.0f);
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            xOrigin = sibling.x - allViewWidth - views.count * padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            xOrigin = sibling.x - allViewWidth - views.count * padding;
            yOrigin = sibling.yMax - height;
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            xOrigin = sibling.x - allViewWidth - views.count * padding;
            yOrigin = sibling.yMid - (height / 2.0f);
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            xOrigin = sibling.xMax - allViewWidth - (views.count - 1) * padding;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderCentered:
        {
            xOrigin = sibling.xMid - (allViewWidth + (views.count - 1) * padding) / 2.0f;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.y - height - padding;
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            xOrigin = sibling.xMax - allViewWidth - (views.count - 1) * padding;
            yOrigin = sibling.y - height - padding;
        }
            break;
        case PPAlignAboveCentered:
        {
            xOrigin = sibling.xMid - (allViewWidth + (views.count - 1) * padding) / 2.0f;
            yOrigin = sibling.y - height - padding;
        }
            break;
    }
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        CGFloat tempWidth  = view.width;
        CGFloat tempHeight = PPNeon_MIN(view.height, maxHeight);
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, tempWidth, tempHeight) scale:1.0f]];
        xOrigin += xAdjust;
        xAdjust = tempWidth + padding;
    }
}

- (void)_groupAndAlignVertical:(PPAlign)align
                        viedws:(NSArray *)views
                    relativeTo:(PPNeon_View *)sibling
                       padding:(CGFloat)padding
                         width:(CGFloat)width
                        height:(CGFloat)height {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndAlignVertical", PPNeonName);
        return;
    }
    
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat yAdjust = height + padding;
    
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMax - views.count * height - (views.count - 1) * padding;
        }
            break;
        case PPAlignToTheRightCentered:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMid - (views.count * height + (views.count - 1) * padding) / 2.0f;
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.yMax - views.count * height - (views.count - 1) * padding;
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.yMid - (views.count * height + (views.count - 1) * padding) / 2.0f;
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            xOrigin = sibling.xMax - width;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderCentered:
        {
            xOrigin = sibling.xMid - width / 2.0f;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.y - views.count * height - views.count * padding;
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            xOrigin = sibling.xMax - width;
            yOrigin = sibling.y - views.count * height - views.count * padding;
        }
            break;
        case PPAlignAboveCentered:
        {
            xOrigin = sibling.xMid - width / 2.0f;
            yOrigin = sibling.y - views.count * height - views.count * padding;
        }
            break;
    }
    
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, width, height) scale:1.0f]];
        yOrigin += yAdjust;
    }
}

- (void)_groupAndAlignVertical:(PPAlign)align
                        viedws:(NSArray *)views
                  viewsPadding:(CGFloat)viewsPadding
                    relativeTo:(PPNeon_View *)sibling
                       padding:(CGFloat)padding
                      maxWidth:(CGFloat)maxWidth {
    if (views.count <= 0) {
        PPNeonNSLog(@"%@:  UIView+PPGroupable     No subviews provided to groupAndAlignVertical", PPNeonName);
        return;
    }
    
    PPNeon_View *firstView = views.firstObject;
    NSAssert([firstView isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
    CGFloat width   = PPNeon_MIN(firstView.width, maxWidth);
    CGFloat height  = firstView.height;
    CGFloat xOrigin = 0.0f;
    CGFloat yOrigin = 0.0f;
    CGFloat yAdjust = height + viewsPadding;
    CGFloat allViewHeight = 0.0f;
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        allViewHeight += view.height;
    }
    
    switch (align) {
        case PPAlignToTheRightMatchingTop:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheRightMatchingBottom:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMax - allViewHeight - (views.count - 1) * viewsPadding;
        }
            break;
        case PPAlignToTheRightCentered:
        {
            xOrigin = sibling.xMax + padding;
            yOrigin = sibling.yMid - (allViewHeight + (views.count - 1) * viewsPadding) / 2.0f;
        }
            break;
        case PPAlignToTheLeftMatchingTop:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.y;
        }
            break;
        case PPAlignToTheLeftMatchingBottom:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.yMax - allViewHeight - (views.count - 1) * viewsPadding;
        }
            break;
        case PPAlignToTheLeftCentered:
        {
            xOrigin = sibling.x - width - padding;
            yOrigin = sibling.yMid - (allViewHeight + (views.count - 1) * viewsPadding) / 2.0f;
        }
            break;
        case PPAlignUnderMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderMatchingRight:
        {
            xOrigin = sibling.xMax - width;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignUnderCentered:
        {
            xOrigin = sibling.xMid - width / 2.0f;
            yOrigin = sibling.yMax + padding;
        }
            break;
        case PPAlignAboveMatchingLeft:
        {
            xOrigin = sibling.x;
            yOrigin = sibling.y - allViewHeight - views.count * viewsPadding;
        }
            break;
        case PPAlignAboveMatchingRight:
        {
            xOrigin = sibling.xMax - width;
            yOrigin = sibling.y - allViewHeight - views.count * viewsPadding;
        }
            break;
        case PPAlignAboveCentered:
        {
            xOrigin = sibling.xMid - width / 2.0f;
            yOrigin = sibling.y - allViewHeight - views.count * viewsPadding;
        }
            break;
    }
    
    for (PPNeon_View *view in views) {
        NSAssert([view isKindOfClass:[PPNeon_View class]], @"All objects in the array must be views");
        CGFloat tempWidth  = PPNeon_MIN(view.width, maxWidth);
        CGFloat tempHeight = view.height;
        [view setFrame:[PPNeonCoordinates pp_adjustRectToDisplayScale:CGRectMake(xOrigin, yOrigin, tempWidth, tempHeight) scale:1.0f]];
        yOrigin += yAdjust;
        yAdjust = tempHeight + viewsPadding;
    }
}

@end
