//
//  ViewController.m
//  CustomButton
//
//  Created by fanxiaoibn on 17/3/16.
//  Copyright © 2017年 fanxiaobin. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    for (int i = 0; i < 6; i++) {
        NSInteger row = i / 3;
        NSInteger cloumn = i % 3;
        
        CGFloat leftSpace = 30, topSpace = 100, margin = 30, btnWidth = 80;
        CustomButton *b = [[CustomButton alloc] initWithFrame:CGRectMake(leftSpace + (margin + btnWidth) * cloumn,topSpace + (btnWidth + margin) * row, btnWidth, btnWidth)];
        b.backgroundColor = [UIColor yellowColor];
        [b setImage:[UIImage imageNamed:@"star"] forState:UIControlStateNormal];
        [b setTitle:@"星星" forState:UIControlStateNormal];
        [b setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [b setImageRect:CGRectMake(10, 10, 20, 20) titleRect:CGRectMake(30, 10, 40, 20) textAlignment:NSTextAlignmentCenter];
        [self.view addSubview:b];
        
        ///可随意设置image和title的frame
        switch (i) {
           
            case 1:{
                [b setImageRect:CGRectMake(30, 10, 20, 20) titleRect:CGRectMake(10, 40, 60, 20) textAlignment:NSTextAlignmentCenter];
            }break;
            case 2:{
                [b setImageRect:CGRectMake(10, 10, 20, 20) titleRect:CGRectMake(10, 40, 40, 20) textAlignment:NSTextAlignmentCenter];
            }break;
            case 3:{
                [b setImageRect:CGRectMake(50, 10, 20, 20) titleRect:CGRectMake(10, 10, 40, 20) textAlignment:NSTextAlignmentCenter];
            }break;
            case 4:{
                [b setImageRect:CGRectMake(30, 30, 20, 20) titleRect:CGRectMake(10, 10, 60, 20) textAlignment:NSTextAlignmentCenter];
            }break;
            case 5:{
                [b setImageRect:CGRectMake(10, 40, 20, 20) titleRect:CGRectMake(10, 20, 40, 20) textAlignment:NSTextAlignmentCenter];
            }break;
            default:
                break;
        }

    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
