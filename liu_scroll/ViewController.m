//
//  ViewController.m
//  liu_scroll
//
//  Created by apple on 15/6/25.
//  Copyright (c) 2015年 Liuyang. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"
@interface ViewController ()
{
    float       _width;
    float       _height;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];

    _width=[UIScreen mainScreen].bounds.size.width;
    _height=[UIScreen mainScreen].bounds.size.height;

    NSArray*array=@[[UIImage imageNamed:@"1.jpg"],[UIImage imageNamed:@"2.jpg"],[UIImage imageNamed:@"3.jpg"],[UIImage imageNamed:@"4.jpg"],[UIImage imageNamed:@"5.jpg"]];


    MyScrollView*_scroll=[[MyScrollView alloc]initWithFrame:CGRectMake(0, 100, _width, 200)];
    _scroll.pagingEnabled=YES;
    _scroll.bounces=NO;
    _scroll.imageArray=array;
//    _scroll.timer=[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    _scroll.contentSize=CGSizeMake(_width*array.count, 200);
    _scroll.backgroundColor=[UIColor redColor];
    [self.view addSubview:_scroll];




}
//-(void)timeAction
//{
//    _count++;
//    self.contentOffset=CGPointMake(_width*_count, 0);
//    //    if (_count==self.imageArray.count-1) {
//    //        _count=-1;
//    //    }
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
