//
//  View+PPGroupable.h
//  PPNeon
//
//  Created by silencedev on 08/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPFrameable.h"

@interface PPNeon_View (PPGroupable)

/**
 *  Tell a view to group an array of its subviews centered, specifying the padding between each subview, as well as the size of each.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically in the center.
 *  @param views   The array of views to grouped in the center. Depending on if the views are gouped horizontally or vertically, they will be positioned in order from left-to-right and top-to-bottom, respectively.
 *  @param padding The padding to be applied between the subviews.
 *  @param width   The width of each subview.
 *  @param height  The height of each subview.
 */
- (void)groupInCenter:(PPGroup)group
                views:(NSArray *)views
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height;

/**
 *  Tell a view to group an array of its subviews filling the width and height of the superview, specifying the padding between each subview and the superview.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically.
 *  @param views   The array of views to be grouped against the sibling. Depending on if the views are grouped horizontally or vertically, they will be positions in-order from left-to-right and top-to-bottom, respectively.
 *  @param padding The padding to be applied between each of the subviews and the sibling.
 */
- (void)groupAndFill:(PPGroup)group
               views:(NSArray *)views
             padding:(CGFloat)padding;

/**
 *  Tell a view to group an array of its subviews filling the width and height, specifying the padding between each subview and the superview.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically.
 *  @param views   The array of views to be grouped against the sibling. Depending on if the views are grouped horizontally or vertically, they will be positions in-order from left-to-right and top-to-bottom, respectively.
 *  @param padding The padding to be applied between each of the subview and the sibling.
 *  @param width   The width of each subview.
 *  @param height  The height of each subview.
 */
- (void)groupAndFill:(PPGroup)group
               views:(NSArray *)views
             padding:(CGFloat)padding
               width:(CGFloat)width
              height:(CGFloat)height;

/**
 *  Tell a view to group an array of its subviews against one of its edges, specifying the padding between each subview and their superview, as well as the size of each.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically against the specified edge.
 *  @param views   The array of views to grouped against the spcified edge. Depending on if the views are gouped horizontally or vertically, they will be positioned in-order from left-to-right and top-to-bottom, respectively.
 *  @param edge    The specified edge the views will be grouped against.
 *  @param padding The padding to be applied between each of the subviews and their superview.
 *  @param width   The width of each subview.
 *  @param height  The height of each subview.
 */
- (void)groupAgainstEdge:(PPGroup)group
                   views:(NSArray *)views
             againstEdge:(PPEdge)edge
                 padding:(CGFloat)padding
                   width:(CGFloat)width
                  height:(CGFloat)height;

/**
 *  Tell a view to group an array of its subviews in one of its corners, specifying the padding between each subview, as well as the size of each.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically in the corner.
 *  @param views   The array of views to grouped in the specified corner. Depending on if the views are gouped horizontally or vertically, they will be positioned in order from left-to-right and top-to-bottom, respectively.
 *  @param corner  The specified corner the views will be grouped in.
 *  @param padding The padding to be applied between the subviews and their superview.
 *  @param width   The width of each subview.
 *  @param height  The height of each subview.
 */
- (void)groupInCorner:(PPGroup)group
                views:(NSArray *)views
             inCorner:(PPCorner)corner
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height;

/**
 *  Tell a view to group an array of its subviews relative to another of that view's subview, specifying the padding between each.
 *
 *  @param group   The `Group` type specifying if the subviews will be laid out horizontally or vertically against the specified sibling.
 *  @param align   The `Align` type specifying how the views will be aligned relative to the sibling.
 *  @param views   The array of views to grouped against the sibling. Depending on if the views are gouped horizontally or vertically, they will be positioned in-order from left-to-right and top-to-bottom, respectively.
 *  @param sibling The sibling view that the views will be aligned relative to.
 *  @param padding The padding to be applied between each of the subviews and the sibling.
 *  @param width   The width of each subview.
 *  @param height  The height of each subview.
 */
- (void)groupAndAlign:(PPGroup)group
             andAlign:(PPAlign)align
                viwes:(NSArray *)views
           relativeTo:(PPNeon_View *)sibling
              padding:(CGFloat)padding
                width:(CGFloat)width
               height:(CGFloat)height;

/**
 *  Tell a view to group an array of its subviews relative to another of that view's subview, specifying the padding between each.
 *
 *  @param group        The `Group` type specifying if the subviews will be laid out horizontally or vertically against the specified sibling.
 *  @param align        The `Align` type specifying how the views will be aligned relative to the sibling.
 *  @param views        The array of views to grouped against the sibling. Depending on if the views are gouped horizontally or vertically, they will be positioned in-order from left-to-right and top-to-bottom, respectively.
 *  @param viewsPadding The viewsPadding to be applied between each of subviews.
 *  @param sibling      The sibling view that the views will be aligned relative to.
 *  @param padding      The padding to be applied between each of the subviews and the sibling.
 *  @param maxWidth     The maxWidth of PPGroupVertical each subview.
 *  @param maxHeight    The maxHeight of PPGroupHorizontal each subview.
 */
- (void)groupAndAlign:(PPGroup)group
             andAlign:(PPAlign)align
                viwes:(NSArray *)views
         viewsPadding:(CGFloat)viewsPadding
           relativeTo:(PPNeon_View *)sibling
              padding:(CGFloat)padding
             maxWidth:(CGFloat)maxWidth
            maxHeight:(CGFloat)maxHeight;

@end
