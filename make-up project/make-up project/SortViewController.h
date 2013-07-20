//
//  SortViewController.h
//  make-up project
//
//  Created by owen on 13-6-19.
//  Copyright (c) 2013年 owen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SortViewController : UIViewController<UITableViewDataSource,UIAlertViewDelegate>

//创建一个表格属性
@property(nonatomic,retain)UITableView *Stable;

//需要在表格中显示数据，不止一个数据，需要使用集合保存这些数据
@property(nonatomic,retain)NSArray *datas;



@end
