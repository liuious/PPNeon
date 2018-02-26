//
//  View+PPNeon.m
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "View+PPNeon.h"

@implementation PPNeon_View (PPNeon)

- (void)pp_neonMakeAlign:(void (NS_NOESCAPE ^)(id <PPNeonAlignLayout> ))block {
    self.translatesAutoresizingMaskIntoConstraints = YES;
    PPNeonAlign *align = [[PPNeonAlign alloc] initWithView:self];
    block(align);
    [align installNeon];
}

- (void)pp_neonMakeEdgeCorner:(void (NS_NOESCAPE ^)(id <PPNeonCornerLayout> ))block {
    self.translatesAutoresizingMaskIntoConstraints = YES;
    PPNeonEdgeCorner *edgeCorner = [[PPNeonEdgeCorner alloc] initWithView:self];
    block(edgeCorner);
    [edgeCorner installNeon];
}

@end
