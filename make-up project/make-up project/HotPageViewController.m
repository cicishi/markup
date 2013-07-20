//
//  HotPageViewController.m
//  make-up project
//
//  Created by owen on 13-6-20.
//  Copyright (c) 2013年 owen. All rights reserved.
//

#import "HotPageViewController.h"

@interface HotPageViewController ()

@end

@implementation HotPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    //给当前的窗口设置一个标题
    self.title=@"热 门";
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
