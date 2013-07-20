//
//  SortViewController.m
//  make-up project
//
//  Created by owen on 13-6-19.
//  Copyright (c) 2013年 owen. All rights reserved.
//

#import "SortViewController.h"

//点击表格中任意一行，导航到的目标页面
#import "SortSubViewController.h"

@interface SortViewController ()

@end

@implementation SortViewController

@synthesize Stable,datas;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //数组赋值
    [self getDatas];
    
    //给表格初始化，指定表格的尺寸和样式
    //动态得到当前 view 的尺寸
    //1 创建一个能够保存数据的表格对象
    CGRect viewSize=[self.view frame];
    CGRect frame=CGRectMake(0, 0, viewSize.size.width, viewSize.size.height);
    Stable=[[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    
    //2，使用代理，为表格中每个单元格设置数据
    //设置表格的数据源对象，由哪个对象负责往表格中放入数据
    Stable.dataSource=self;
    Stable.delegate = self;
    
    //3 把每个单元格，放入到 stale 中
    //加载数据到表格中
    [Stable reloadData];
    
    
    //给当前的窗口设置一个标题
    self.title=@"分 类";
    
    //把表格显示在当前的窗口中
    [self.view addSubview:Stable];

}

#pragma mark -
#pragma mark 初始化集合中的数据 
-(NSArray *)getDatas
{
    datas=[NSArray arrayWithObjects:@"面部护肤FACE-ACHE", @"时尚彩妆FASHION  MAKE-UP",@"男士护肤GENTLEMAN  SKIN-CARE",@"美体瘦身SLIMMING",@"经典香氛THE CLASSIC FRAGRANLE",@"个人洗护CONSUMER",@"精油芳疗ESSENTIAL  OIL AROMATIC  THERAPY",@"美妆工具MAKE-UP TOOL",nil];

    
    return datas;
}

#pragma mark -
#pragma mark UITableViewDataSource protocol
//返回指定 章节section 中的单元格的个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //当前例子中只有一个章节 section
    return [datas count];
}

//根据表格的数字索引（行号），一一往每个单元格中放入数据
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //先从表格中尝试，取出一个单元格
    UITableViewCell *cell=[self.Stable dequeueReusableCellWithIdentifier:@"面部护肤FACE-ACHE"];
    
    //判断，如果无法取出，说明 tableview  是架空
    //要想放入数据，必须手动创建每个 cell对象
    if (cell ==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"面部护肤FACE-ACHE"];

        //扩展一下这个单元格，给用户提示，点这个单元格可以导航
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }
    
    //代码执行到这里， cell 一定已经存在，可以放心的放入数据或图片
    cell.textLabel.text=[datas objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //根据行号判断，进行导航
//    if (indexPath.row ==0) {
//        //说明选中第一个单元格
//        //创建要导航到的新页面
//        SortSubViewController *subview=[[SortSubViewController alloc]init];
//        //使用导航控制器对象，进行入栈
//        [self.navigationController pushViewController:subview animated:YES];
//    }
    
    //创建要导航到的新页面
    //SortSubViewController *subview=[[SortSubViewController alloc]init];
    SortSubViewController *subview=[[SortSubViewController alloc]initWithNibName:@"SortSubViewController" bundle:nil];
    
    //使用导航控制器对象，进行入栈
    [self.navigationController pushViewController:subview animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end












