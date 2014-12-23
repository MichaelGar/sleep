//
//  SettingsView.h
//  polyphasic-sleep
//
//  Created by KINYAYKIN on 13.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsView : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
