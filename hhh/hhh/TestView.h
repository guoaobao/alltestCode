//
//  TestView.h
//  hhh
//
//  Created by gab on 17/6/12.
//  Copyright © 2017年 gab. All rights reserved.
//
typedef void(^MyBlock)();
#import <UIKit/UIKit.h>
#import "gabview.h"
@interface TestView : gabview
@property(nonatomic,copy)MyBlock block;
@end
