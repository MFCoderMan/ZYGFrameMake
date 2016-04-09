//
//  ViewController.m
//  ZYGFrameMakeDemo
//
//  Created by ZhangYunguang on 16/4/8.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "ViewController.h"
#import "ZYGFrameMake.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatImageView];
}
-(void)creatImageView{
    UIImageView *navImage = [[UIImageView alloc] initWithFrame:[ZYGFrameMake makeConstantHeightWidgetFrameX:0 Y:20 W:375 constantHeight:44]];
    navImage.backgroundColor = [UIColor orangeColor];
    NSLog(@"导航栏高度：%f",navImage.frame.size.height);
    [self.view addSubview:navImage];
    
    UIImageView *image1 = [[UIImageView alloc] initWithFrame:[ZYGFrameMake makeCloseWidgetFrameX:0 relativeY:navImage.frame.origin.y + navImage.frame.size.height W:375 H:180]];
    image1.image = [UIImage imageNamed:@"003"];
    NSLog(@"image1的y坐标：%f",image1.frame.origin.y);
    [self.view addSubview:image1];
    
    UIImageView *image2 = [[UIImageView alloc] initWithFrame:[ZYGFrameMake makeCloseWidgetFrameRelativeX:image1.frame.origin.x relativeY:image1.frame.origin.y + image1.frame.size.height W:472/2 H:254/2]];
    image2.image = [UIImage imageNamed:@"002"];
    [self.view addSubview:image2];
    
    UIImageView *image3 = [[UIImageView alloc] initWithFrame:[ZYGFrameMake makeCloseWidgetFrameRelativeX:image2.frame.origin.x + image2.frame.size.width relativeY:image2.frame.origin.y W:120 H:100]];
    image3.image = [UIImage imageNamed:@"001"];
    [self.view addSubview:image3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
