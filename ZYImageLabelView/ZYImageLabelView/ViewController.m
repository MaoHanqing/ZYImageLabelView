//
//  ViewController.m
//  ZYImageLabelView
//
//  Created by 毛汉卿 on 2016/12/7.
//  Copyright © 2016年 毛汉卿. All rights reserved.
//

#import "ViewController.h"
#import "ZYImageLabelView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZYImageLabelView *imageView1 =[[ZYImageLabelView alloc]initWithFrame:CGRectMake(100, 50, 200, 200)];
    imageView1.backgroundColor=[UIColor redColor];
    imageView1.imageView.backgroundColor =[UIColor blueColor];
    imageView1.label.backgroundColor=[UIColor blackColor];
    imageView1.imagesize=CGSizeMake(20, 30);
   
    [self.view addSubview:imageView1];
    imageView1.labelLeft = 30;
    
    ZYImageLabelView *imageView =[[ZYImageLabelView alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
    imageView.backgroundColor=[UIColor redColor];
    imageView.imageView.backgroundColor =[UIColor blueColor];
    imageView.label.backgroundColor=[UIColor blackColor];
    
    
    [self.view addSubview:imageView];
//    imageView.imageLeft = 30;
    imageView.imageEdge =UIEdgeInsetsMake(10, 20, 0, 0);
    imageView.imagesize=CGSizeMake(20, 30);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
