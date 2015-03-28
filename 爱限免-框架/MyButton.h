//
//  MyButton.h
//  03-Block语法基础
//
//  Created by apple on 15/3/6.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyButton;

typedef void (^block)(MyButton *button);
@interface MyButton : UIButton

//@property (nonatomic ,copy) NSString *frame;
//@property (nonatomic, copy) NSString *title;
//@property (nonatomic, copy) NSString *background;
//@property (nonatomic, copy) NSString *action;

+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title Target:(id)target Action:(SEL)sel;

+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title andBlock:(block)tempBlock;

+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title backgroundImage:(NSString *)background angImage:(NSString *)image andBlock:(block)tempBlock;

@end
