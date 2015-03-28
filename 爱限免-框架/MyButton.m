//
//  MyButton.m
//  03-Block语法基础
//
//  Created by apple on 15/3/6.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import "MyButton.h"

@interface MyButton()
@property (nonatomic, copy) block  myBlock;
//飞block变量写合成存取一定使用copy
@end

@implementation MyButton
+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title Target:(id)target Action:(SEL)sel
{
    //自定义一个btn
    MyButton *btn = [MyButton buttonWithType:type];
    btn.frame = frame;
    //给btn添加标题的时候用set方法
    [btn setTitle:title forState:UIControlStateNormal];
    //btn.backgroundColor = color;
    [btn addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title andBlock:(block)tempBlock
{
    //自定义一个btn
    MyButton *btn = [MyButton buttonWithType:type];
    btn.frame = frame;
    //给btn添加标题的时候用set方法
    [btn setTitle:title forState:UIControlStateNormal];
    //btn.backgroundColor = color;
    [btn addTarget:btn action:@selector(click_btn:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.myBlock = tempBlock;
    
    return btn;

}

+ (MyButton *)initWithFrame:(CGRect)frame Type:(UIButtonType)type Title:(NSString *)title backgroundImage:(NSString *)background angImage:(NSString *)image andBlock:(block)tempBlock
{
    
    //自定义一个btn
    MyButton *btn = [MyButton buttonWithType:type];
    btn.frame = frame;
    //给btn添加标题的时候用set方法
    [btn setTitle:title forState:UIControlStateNormal];
    //btn.backgroundColor = color;
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:background] forState:UIControlStateNormal];
    [btn addTarget:btn action:@selector(click_btn:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.myBlock = tempBlock;
    
    return btn;
}
- (void)click_btn:(MyButton *)button{
    NSLog(@"这里是button的内部");
    button.tag = 10;
    button.myBlock(button);
}
@end
