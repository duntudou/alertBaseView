//
//  HZAlertBaseView.h
//  alertBaseView
//
//  Created by liudianling on 15/9/9.
//  Copyright (c) 2015年 zhaohengzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZAlertBaseView : UIView

-(instancetype)initWithContentView:(UIView *)contentView;
@property(nonatomic,weak)UIView *contentView;

@property(nonatomic,assign)BOOL autoRemove;
-(void)show;
-(void)remove;
@end
