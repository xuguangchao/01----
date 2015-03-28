//
//  TabBarViewController.m
//  爱限免-框架
//
//  Created by apple on 15/3/10.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (UIViewController *)controllerWithString:(NSString *)controller title:(NSString *)title andImage:(NSString *)imageName
{
    //得到类的对象
    Class viewController = NSClassFromString(controller);
    
    //得到这个类的对象（多态的体现）
    UIViewController *con = [[viewController alloc]init];
    //直接给试图控制器设置标题即可
    con.title = title;
    //con.tabBarItem.image = [UIImage imageNamed:imageName];
    //放在导航控制器上
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:con];
    
    nav.tabBarItem.image = [UIImage imageNamed:imageName];
    nav.title = title;
    
    //将导航控制器放入标签栏控制器上
    NSMutableArray *tempArr = [NSMutableArray arrayWithArray:self.viewControllers];
    [tempArr addObject:nav];
    
    self.viewControllers = tempArr;
    
    //将当前的试图控制器返回
    return con;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
