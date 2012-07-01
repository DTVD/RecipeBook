//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Minh Vu Nhat on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;;
@property (nonatomic, strong) IBOutlet UIWebView *webView;

@end
