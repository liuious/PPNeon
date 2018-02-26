//
//  PPNeonLayout.h
//  PPNeon
//
//  Created by silencedev on 07/06/2017.
//  Copyright © 2017 silencedev. All rights reserved.
//

#import "PPNeonUtilities.h"
#import "PPNeonLayoutProtocol.h"

@interface PPNeon : NSObject

@property (nonatomic, strong)  PPNeonViewConstraint *constraint;

- (instancetype)initWithView:(PPNeon_View *)view;
- (void)installNeon;

@end

@interface PPNeonAlign : PPNeon <PPNeonAlignLayout>

@end

@interface PPNeonEdgeCorner : PPNeon <PPNeonCornerLayout>

@end
