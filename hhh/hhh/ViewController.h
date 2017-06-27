//
//  ViewController.h
//  hhh
//
//  Created by gab on 17/3/22.
//  Copyright © 2017年 gab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tab;

@property(strong,nonatomic) IBOutlet NSLayoutConstraint *lay;

@end

