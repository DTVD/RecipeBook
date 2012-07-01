//
//  RecipeBookViewController.h
//  RecipeBook
//
//  Created by Minh Vu Nhat on 6/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeBookViewController : UIViewController <UITabBarDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView *tableViewNM;

@end
