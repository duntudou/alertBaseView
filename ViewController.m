//
//  ViewController.m
//  alertBaseView
//
//  Created by liudianling on 15/9/9.
//  Copyright (c) 2015年 zhaohengzhi. All rights reserved.
//

#import "ViewController.h"
#import "HZAlertBaseView.h"
#import "contentView.h"
#define keyWindow [UIApplication sharedApplication].keyWindow
#define viewwidth   keyWindow.bounds.size.width*0.8
#define  viewheight 160
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    contentView *cView=[[contentView alloc] init];
    cView.frame=CGRectMake(0, 0,viewwidth, viewheight);
    
    HZAlertBaseView *alertBaseView=[[HZAlertBaseView alloc] initWithContentView:cView];
        [alertBaseView show];

}

@end
