//
//  gabview.m
//  hhh
//
//  Created by gab on 17/4/12.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "gabview.h"

@implementation gabview
@synthesize lb=_lb;//实现属性的set，get方法，并将该方法作用于变量_lb的身上
-(id)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        _lb=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 70)];
        [self addSubview:_lb];
        
        
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews
{
    [super layoutSubviews];
    _lb.text=@"hh";

}
@end
