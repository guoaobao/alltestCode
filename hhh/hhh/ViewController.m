//
//  ViewController.m
//  hhh
//
//  Created by gab on 17/3/22.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "gabview.h"
#import "hhTableViewCell.h"
typedef NSArray hhh;
@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>
{

     NSArray *_arr;

}
@property(nonatomic,strong) WKWebView *gab_QRWebView;
@property(nonatomic,strong)gabview *headview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    double gab=10.787777;
     double b= modf(gab, &gab);
    
    
    for (int a=0; a<8; a++) {
        float rowNum=a/3;
        float colNum=a%3;
        //九宫格对行数取整，对列数取余。
        float x=colNum *(40+10);
        float y=rowNum *(40 +10)+80;
        UILabel *lab=[[UILabel alloc]init];
        lab.backgroundColor=[UIColor grayColor];
        lab.frame=CGRectMake(x, y, 40, 40);
        [self.view addSubview:lab];
        
    }
    
    
    _tab.backgroundColor=[UIColor clearColor];
    _tab.separatorStyle=0;
    self.headview=[[gabview alloc]initWithFrame:CGRectMake(0, 0, self.tab.bounds.size.width, 100)];
    self.headview.backgroundColor=[UIColor redColor];
    self.headview.lb.text=@"www";
    self.tab.tableHeaderView=self.headview;
    
    hhh *arr=[[NSArray alloc]init];//类型别名
//    self.edgesForExtendedLayout=UIRectEdgeNone;//设置这个属性之后子视图就不需要在设置向下偏移44(导航条的高度)了加上toolbar的高度20总共64
//    self.automaticallyAdjustsScrollViewInsets=NO;
//    self.gab_QRWebView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    NSString *str=@"http://oms.joojtech.com/Api/V1/Login?ticket=fa7f3adee8f9dd78ec77eb378ef8d316";
//    [self.gab_QRWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
//    self.gab_QRWebView.navigationDelegate = self;
//    self.gab_QRWebView.UIDelegate = self;
//    self.gab_QRWebView.backgroundColor=[UIColor redColor];
//    [self.view addSubview:self.gab_QRWebView];
//    UIView *jj=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    jj.backgroundColor=[UIColor redColor];
//    [self.view addSubview:jj];

    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:10];
        dispatch_async(dispatch_get_main_queue(), ^{
           
            self.headview.backgroundColor=[UIColor blackColor];
            self.headview.lb.text=@"我";
            self.headview.lb.textColor=[UIColor yellowColor];

            //单纯的改变表头的展示不需要再重新刷新表，刷新表的目的基本上是重构cell...
        });
        
    });
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    NSString *imgURL = @"document.getElementsByTagName('img')[0].src";
    
    [self.gab_QRWebView evaluateJavaScript:imgURL completionHandler:^(id _Nullable script, NSError * _Nullable error) {
        
    }];
    
    
   }
// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{

    return 60;

}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *back=[[UIView alloc]initWithFrame:CGRectMake(0, 0, _tab.bounds.size.width, 60)];
    back.backgroundColor=[UIColor redColor];
    return back;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.001;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    hhTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell=[[hhTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.backgroundColor=[UIColor clearColor];//没有线就好
    }
    cell.hhhh=@"hahah";
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
