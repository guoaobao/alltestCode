//
//  hhTableViewCell.m
//  hhh
//
//  Created by gab on 17/4/12.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "hhTableViewCell.h"

@implementation hhTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setHhhh:(NSString *)hhhh
{

    _hhhh=hhhh;

}
-(void)layoutSubviews
{

    [super layoutSubviews];//因为setHhhh在打点赋值的时候掉的，此时cell对象还没返回出去，而layoutSubviews是在cell返回出去并展示到表上时才开始布局cell本身上展示的视图。。。


}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
