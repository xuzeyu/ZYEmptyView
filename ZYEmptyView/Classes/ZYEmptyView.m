//
//  ZYEmptyView.m
//  ReadBook
//
//  Created by XUZY on 2021/5/25.
//  Copyright © 2021 xuzy. All rights reserved.
//

#import "ZYEmptyView.h"
#define ZYEmptyViewSCALE(space)        ((CGFloat)(((space) / 375.0) * [[UIScreen mainScreen] bounds].size.width))

@implementation ZYEmptyView

+ (instancetype)activityIndicatorView {
    
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleGray)];
    activityIndicator.hidesWhenStopped = YES;
    activityIndicator.backgroundColor = [UIColor clearColor];
    activityIndicator.frame = CGRectMake(0, 0, 50, 50);
    [customView addSubview:activityIndicator];
    
    [activityIndicator startAnimating];
    ZYEmptyView *diy = [ZYEmptyView emptyViewWithCustomView:customView];
    return diy;
}

+ (instancetype)noDataEmptyText:(NSString *)text  {
    return [self noDataEmptyText:text offset:0];
}

+ (instancetype)noDataEmptyTextFixedOffset:(NSString *)text  {
    return [self noDataEmptyText:text offset:-50];
}

+ (instancetype)noDataEmptyTextFloatOffset:(NSString *)text  {
    return [self noDataEmptyText:text offset:-ZYEmptyViewSCALE(42)];
}

+ (instancetype)noDataEmptyText:(NSString *)text offset:(CGFloat)offset {
    ZYEmptyView *diy = [ZYEmptyView emptyActionViewWithImageStr:nil
                                                    titleStr: text.length > 0 ? text :@"暂无数据"
                                                    detailStr:nil
                                                  btnTitleStr:nil
                                                       target:nil
                                                       action:nil];
    diy.contentViewOffset = offset;
    diy.imageSize = CGSizeMake(80, 80);
    return diy;
}

@end
