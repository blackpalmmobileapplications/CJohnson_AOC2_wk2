//
//  SecondViewController.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    // Background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    // Loads text into textfield
    devInfo.text = @"Carmen Johnson";
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
// Back Button
-(IBAction)infoClose:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
    NSLog(@"Back button pressed");
}

@end
