//
//  MyScrollView.m
//  liu_scroll
//
//  Created by apple on 15/6/25.
//  Copyright (c) 2015年 Liuyang. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

{
    float  _width;
    float  _height;
    int    _count;

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
*/
 - (void)drawRect:(CGRect)rect {


     _count=0;

     self.timer=[NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];

     _width=self.contentSize.width/self.imageArray.count;
     _height=self.frame.size.height;
     for (int i=0; i<self.imageArray.count; i++) {
         UIImageView*imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0+_width*i, 0, _width, _height)];
         imageview.image=[self.imageArray objectAtIndex:i];
         [self addSubview:imageview];
     }

}
-(void)timeAction
{
    _count++;
    [UIView animateWithDuration:0.3 animations:^{
        self.contentOffset=CGPointMake(_width*_count, 0);

    }];

    if (_count==self.imageArray.count-1) {
        _count=-1;
    }

}

@end
