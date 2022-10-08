//
//  ZYEmptyView.h
//  ReadBook
//
//  Created by XUZY on 2021/5/25.
//  Copyright © 2021 xuzy. All rights reserved.
//

#import "LYEmptyView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZYEmptyView : LYEmptyView

+ (instancetype)activityIndicatorView;
+ (instancetype)noDataEmptyText:(NSString *)text;
+ (instancetype)noDataEmptyTextFixedOffset:(NSString *)text;
+ (instancetype)noDataEmptyTextFloatOffset:(NSString *)text;
+ (instancetype)noDataEmptyText:(NSString *)text offset:(CGFloat)offset;
@end

NS_ASSUME_NONNULL_END
