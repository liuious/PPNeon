//
//  PPExampleViewController.m
//  PPNeon
//
//  Created by silencedev on 16/4/14.
//  Copyright © 2016年 silencedev. All rights reserved.
//

#import "PPExampleViewController.h"

@interface PPExampleViewController ()

@property (nonatomic, strong) UIView * customView;

@end

@implementation PPExampleViewController

- (instancetype)initWithTitle:(NSString *)title
                    viewClass:(Class)clazz {
    self = [super init];
    if (self) {
        self.title = title;
        self.customView = clazz.new;
    }
    return self;
}

- (void)loadView {
    self.view = self.customView;
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

@end
