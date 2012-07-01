//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by Minh Vu Nhat on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RecipeDetailViewController.h"

@implementation RecipeDetailViewController

@synthesize recipeLabel;
@synthesize recipeName;
@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url;
    NSURLRequest *request;
    recipeLabel.text = recipeName;
    //Display here
    if (recipeName == @"Obama"){
        url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"Obama.html" ofType:nil]];
    }
    else if (recipeName == @"Mark Zuckerberg"){
        url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"Mark.html" ofType:nil]];        
    }
    else if (recipeName == @"Steve Jobs"){
        url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"Steve.html" ofType:nil]];
    }
    request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
