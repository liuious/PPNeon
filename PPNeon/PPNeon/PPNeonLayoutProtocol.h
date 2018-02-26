//
//  PPNeonLayoutProtocol.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#ifndef PPNeonLayoutProtocol_h
#define PPNeonLayoutProtocol_h

#import "PPNeonConstraint.h"

@protocol PPNeonAlignLayout <NSObject>

- (PPNeonConstraint * (^)(UIView *relativeView))above;
- (PPNeonConstraint * (^)(UIView *relativeView))under;
- (PPNeonConstraint * (^)(UIView *relativeView))left;
- (PPNeonConstraint * (^)(UIView *relativeView))right;

@end

@protocol PPNeonCornerLayout <NSObject>

- (PPNeonConstraint *)topLeft;
- (PPNeonConstraint *)topRight;
- (PPNeonConstraint *)bottomLeft;
- (PPNeonConstraint *)bottomRight;

@end

#endif /* PPNeonLayoutProtocol_h */
