//
//  TabBarViewController.h
//  爱限免-框架
//
//  Created by apple on 15/3/10.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarViewController : UITabBarController

- (UIViewController *)controllerWithString:(NSString *)controller title:(NSString *)title andImage:(NSString *)imageName;

@end
