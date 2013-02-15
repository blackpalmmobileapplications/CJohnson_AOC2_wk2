//
//  ViewController.h
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeightRoomFactory.h"

@interface ViewController : UIViewController

{
    // Text Fields
    IBOutlet UITextField *displayInfo;
    
    // Buttons
    IBOutlet UIButton *ectomorphButton;
    IBOutlet UIButton *bodyBuildersButton;
    IBOutlet UIButton *gymButton;
    IBOutlet UIButton *calcAdvButton; // For the calculate button
    
    // Image View
    IBOutlet UIImageView *ectomorphImage;
    IBOutlet UIImageView *bodyBuildersImage;
    IBOutlet UIImageView *gymImage;
    UIImage *eclogo;
    UIImage *ectomorphChange;
    UIImage *bodyBuildersChange;
    UIImage *gymChange;
    
    // Stepper
    IBOutlet UIStepper *stepControl;
    
}

// Actions
-(IBAction)faction:(id)sender; // faction buttons
-(IBAction)calculate:(id)sender; // calculate button
-(IBAction)information:(id)sender; // info button
-(IBAction)stepChange:(id)sender; // stepper
-(IBAction)segmentChange:(id)sender; // segmented control

@end
