//
//  View+PPNeon.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPFrameable.h"
#import "PPNeonLayout.h"

@interface PPNeon_View (PPNeon)

- (void)pp_neonMakeAlign:(void (NS_NOESCAPE ^)(id <PPNeonAlignLayout> align))block;
- (void)pp_neonMakeEdgeCorner:(void (NS_NOESCAPE ^)(id <PPNeonCornerLayout> edgeCorner))block;

@end
