//
//  CCTextView.h
//  CCTextView
//
//  Created by Halo on 2017/6/22.
//  Copyright © 2017年 Halo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCTextView : UITextView
@property(copy,nonatomic)   NSString *placeholder;
//最大长度设置
@property(assign,nonatomic) NSInteger maxTextLength;
//更新高度的时候
@property(assign,nonatomic) float updateHeight;
//是否需要自动更新高度
@property (assign,nonatomic) BOOL shouldAutoUpdateHeight;

/**
 *  增加text 长度限制
 *
 *  @param maxLength <#maxLength description#>
 *  @param limit     <#limit description#>
 */
-(void)addMaxTextLengthWithMaxLength:(NSInteger)maxLength andEvent:(void(^)(CCTextView *textView))limit;
/**
  开始编辑的回调

*/
-(void)addTextViewBeginEvent:(void(^)(CCTextView *textView))begin;

/**
 *  结束编辑 的 回调
 *
 *
 */
-(void)addTextViewEndEvent:(void(^)(CCTextView *textView))End;

/**
 更新高度时候的回调，在此方法中可以更新其他控件高度

 @param event <#event description#>
 */
-(void)TextViewDidUpdateHeightEvent:(void(^)(CCTextView *textView))event;

/**
 *  设置Placeholder 颜色
 *
 *  @param color <#color description#>
 */
-(void)setPlaceholderColor:(UIColor*)color;

/**
 *  设置Placeholder 字体
 *
 *  @param font <#font description#>
 */
-(void)setPlaceholderFont:(UIFont*)font;

/**
 *  设置透明度
 *
 *  @param opacity <#opacity description#>
 */
-(void)setPlaceholderOpacity:(float)opacity;


@end
