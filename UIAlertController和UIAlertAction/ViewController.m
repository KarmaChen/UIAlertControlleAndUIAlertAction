//
//  ViewController.m
//  UIAlertController和UIAlertAction
//
//  Created by Karma on 16/5/22.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)even
{
    /*
     typedef NS_ENUM(NSInteger, UIAlertControllerStyle) {
     UIAlertControllerStyleActionSheet = 0,
     UIAlertControllerStyleAlert
     }
     */
    UIAlertController *controller=[UIAlertController alertControllerWithTitle:@"提醒" message:@"您将收到提醒" preferredStyle:UIAlertControllerStyleAlert];
    
    /*
     typedef NS_ENUM(NSInteger, UIAlertActionStyle) {
     UIAlertActionStyleDefault = 0,
     UIAlertActionStyleCancel,
     UIAlertActionStyleDestructive
     }
     */
    UIAlertAction* Action1 = [UIAlertAction actionWithTitle:@"取消"
    style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                                                        }];
    UIAlertAction* Action2 = [UIAlertAction actionWithTitle:@"确定"
    style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                                                      }];
    
    //添加action
    [controller addAction:Action1];
    [controller addAction:Action2];
    //显示提醒
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
