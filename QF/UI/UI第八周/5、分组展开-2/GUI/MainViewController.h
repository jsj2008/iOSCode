//
//  MainViewController.h
//  分组展开
//
//  Created by chen cheng on 14-9-5.
//  Copyright (c) 2014年 chen cheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    //视图
    UITableView  *_tableView;
    
    
    //model
    NSMutableArray   *_dataMutableArray;
    
}

@end
