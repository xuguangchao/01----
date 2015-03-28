//
//  AppListViewController.m
//  爱限免-框架
//
//  Created by apple on 15/3/10.
//  Copyright (c) 2015年 许广超. All rights reserved.
//

#import "AppListViewController.h"
#import "MyButton.h"
@interface AppListViewController ()

@end

@implementation AppListViewController

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
    [self getNavigationItem];
    // Do any additional setup after loading the view.
    //设置左边的分类按钮
}
- (void)getNavigationItem
{
    //设置左侧的按钮
    MyButton *categoryButton = [MyButton initWithFrame:CGRectMake(0, 0, 60, 36) Type:UIButtonTypeCustom Title:@"分类" backgroundImage:@"buttonbar_action" angImage:nil andBlock:^(MyButton *button) {
        NSLog(@"将来分类的内容");
    }];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithCustomView:categoryButton];
    
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //设置右侧的按钮
    MyButton *setButton = [MyButton initWithFrame:CGRectMake(0, 0, 60, 36) Type:UIButtonTypeCustom Title:@"设置" backgroundImage:@"buttonbar_edit" angImage:nil andBlock:^(MyButton *button) {
        NSLog(@"将来设置的内容");
    }];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:setButton];
    
    self.navigationItem.rightBarButtonItem = rightItem;

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
