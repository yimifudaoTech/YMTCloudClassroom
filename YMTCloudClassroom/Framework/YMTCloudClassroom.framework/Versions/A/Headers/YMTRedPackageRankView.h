//
//  YMTRedPackageRankView.h
//  AFNetworking
//
//  Created by SendomZhang on 4/9/2019.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YMTRedPackageRankView : UIView

- (void)fetchRankDataWith:(NSString *)url param:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
