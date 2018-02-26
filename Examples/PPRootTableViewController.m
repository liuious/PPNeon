//
//  AppDelegate.h
//  PPNeon
//
//  Created by silencedev on 16/4/10.
//  Copyright © 2016年 silencedev. All rights reserved.
//

#import "PPRootTableViewController.h"
#import "PPExampleViewController.h"
#import "PPNormalView.h"
#import "PPAnimationView.h"
#import "PPGroupView.h"
#import "PPLinkTestView.h"
#import "PPAlignView.h"
#import "PPEdgeView.h"
#import "PPTestView.h"

@interface PPRootTableViewController ()

@property (nonatomic, copy) NSArray * dataSourceArray;

@end

@implementation PPRootTableViewController

- (instancetype)init {
	self = [super init];
	if (self) {
		self.title = @"布局选择";
        _dataSourceArray = @[
                             [[PPExampleViewController alloc] initWithTitle:@"常规布局" viewClass:[PPNormalView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"动画布局" viewClass:[PPAnimationView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"组布局" viewClass:[PPGroupView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"链式编程测试" viewClass:[PPLinkTestView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"Align布局测试" viewClass:[PPAlignView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"Edge布局测试" viewClass:[PPEdgeView class]],
                             [[PPExampleViewController alloc] initWithTitle:@"测试布局测试" viewClass:[PPTestView class]]
                             ];
	}
	return self;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [_dataSourceArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString * cellIdentifier = @"cellIdentifier";
	UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	if (cell == nil) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
	}
    if (indexPath.row < _dataSourceArray.count) {
        cell.textLabel.text = ((UIViewController *)[_dataSourceArray objectAtIndex:indexPath.row]).title;
    }
	return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row >= _dataSourceArray.count) {
        return ;
    }
    UIViewController * viewController = [_dataSourceArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
