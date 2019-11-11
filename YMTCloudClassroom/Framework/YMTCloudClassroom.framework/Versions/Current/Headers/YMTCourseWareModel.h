//
//  YMTCourseWareModel.h
//  AFNetworking
//
//  Created by SendomZhang on 12/9/2019.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YMTCourseWareModel : NSObject
@property(nonatomic, copy) NSString *url;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) NSInteger pageIndex;
// coueseWare picture 老课件两种类型
@property(nonatomic, strong) NSString *type;
/** 0讲义栏目资源类型值、1讲义栏目例题类型值、2讲义栏目练习类型值作业显示:homework */
@property(nonatomic, copy) NSString *itemType;
@property(nonatomic, strong) id data;

/** 作业实际页码 */
@property(nonatomic, assign) NSInteger pageNo;

// 云教室新增
/** 课程id */
@property(copy, nonatomic) NSString *lessonId;
/** 讲义Id 教室内全程有值 */
@property(copy, nonatomic) NSString *planId;
/** 栏目Id 教室内全程有值 */
@property(copy, nonatomic) NSString *itemId;
/** 是否显示轨迹 默认是yes */
@property(assign, nonatomic) BOOL isShowTrail;
/** 课程状态0：预排；1：完成 2 过期   如果是0的话显示只有左右按钮类似老课件  如果是完成的状态才显示底部栏逻辑*/
@property(copy, nonatomic) NSString *lessonStatus;
/** 是否用老的形式展示作业的图片  默认是no 只有图片小于两个屏幕高度才是yes */
@property(assign, nonatomic) BOOL isShowHomeworkImageWithOld;
/** 记录缩放字典 */
@property(nonatomic, strong) NSDictionary *zoomInOutDic;

/** 小班课2期 异步添加课件使用 默认 -1不处理 */
@property(nonatomic, assign) NSInteger docIndex;

- (BOOL)isEmpty;
- (BOOL)isOldCourseWare;
- (BOOL)isDictionaryObject;
@end

NS_ASSUME_NONNULL_END