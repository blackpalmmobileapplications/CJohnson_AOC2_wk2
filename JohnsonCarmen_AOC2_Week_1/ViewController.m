//
//  ViewController.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "BaseClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // ----- Project 2 -----
    
    // Background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //
    // Images
    eclogo = [UIImage imageNamed:@"eclogo.png"];
    ectomorphChange = [UIImage imageNamed:@"ectomorph.png"];
    bodyBuildersChange = [UIImage imageNamed:@"bodyBuilders.png"];
    gymChange = [UIImage imageNamed:@"Gym.png"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    // Loads text into textfield
    displayInfo.text = @"Class Advantage";
    
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any recreated resources.
}

//
// Information
-(IBAction)information:(id)sender
{
    //
    // Opens SecondView (Developer Information)
    SecondViewController *SecondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (SecondView != nil)
    {
        //
        // Changes scLogo back to their class image
        ectomorphImage.image = ectomorphChange;
        bodyBuildersImage.image = bodyBuildersChange;
        gymImage.image = gymChange;
        [self presentViewController:SecondView animated:TRUE completion:nil];
        NSLog(@"Information button pressed");
    }
}

// Button methods
//
// Set action to (false) so button can no longer be pressed.
-(IBAction)faction:(id)sender
{
    // The Faction Buttons
    UIButton *factionButton = (UIButton*)sender;
    if (factionButton != nil)
    {
        //
        // The ectomorph button
        if (factionButton.tag == 0)
        {
            ectomorphImage.image = eclogo;
            bodyBuildersImage.image = bodyBuildersChange;
            gymImage.image = gymChange;
            ectomorphButton.enabled = false;
            bodyBuildersButton.enabled = true;
            gymButton.enabled = true;
            calcAdvButton.enabled = true;
            NSLog(@"Ectomorph button pressed");
        }
        //
        // bodyBuilders button
        else if (factionButton.tag == 1)
        {
            bodyBuildersImage.image = eclogo;
            ectomorphImage.image = ectomorphChange;
            gymImage.image = gymChange;
            bodyBuildersButton.enabled = false;
            ectomorphButton.enabled = true;
            gymButton.enabled = true;
            calcAdvButton.enabled = true;
            NSLog(@"bodyBuilders button pressed");
        }
        //
        // gym button
        else if (factionButton.tag == 2)
        {
            gymImage.image = eclogo;
            ectomorphImage.image = ectomorphChange;
            bodyBuildersImage.image = bodyBuildersChange;
            gymButton.enabled = false;
            ectomorphButton.enabled = true;
            bodyBuildersButton.enabled = true;
            calcAdvButton.enabled = true;
            NSLog(@"Gym button pressed");
        }
    }
}

//
// Stepper
-(IBAction)stepChange:(id)sender
{
    int addUnit = stepControl.value;
    if (ectomorphButton.enabled == false)
    {
        displayInfo.text = [NSString stringWithFormat:@"add %d Ectomorph units", addUnit];
    }
    else if (bodyBuildersButton.enabled == false)
    {
        displayInfo.text = [NSString stringWithFormat:@"add %d resource", addUnit];
    }
    else if (gymButton.enabled == false)
    {
        displayInfo.text = [NSString stringWithFormat:@"%d muscles built", addUnit];
    }
}

//
// Calculations
-(IBAction)calculate:(id)sender
{
    //
    // Calculate +/- button
    int _calculate = stepControl.value;
    displayInfo.text = [NSString stringWithFormat:@"Muscle"];
    
    if (ectomorphButton.enabled == false)
    {
        Ectomorph *ectomorphInfo = (Ectomorph*)[WeightRoomFactory createPlayerClass:ECTOMORPH];
        if (ectomorphInfo != nil)
        {
            [ectomorphInfo calculateAdvantage];
            [ectomorphInfo setMuscleSize:40]; // Size of Muscles
            int _addUnits = ectomorphInfo.MuscleSize + _calculate;
            displayInfo.text = [NSString stringWithFormat:@"There are %d %@ lifting.", _addUnits, ectomorphInfo. playerClass];
            stepControl.value = 0; // set value back to 40
        }
    }
    else if (bodyBuildersButton.enabled == false)
    {
        BodyBuilders *bodyBuildersInfo = (BodyBuilders*)[WeightRoomFactory createPlayerClass:BODYBUILDERS];
        if (bodyBuildersInfo != nil)
        {
            [bodyBuildersInfo calculateAdvantage];
            [bodyBuildersInfo setResources:800]; // Sets resources
            int _addResource = bodyBuildersInfo.resources + _calculate;
            displayInfo.text = [NSString stringWithFormat:@"%d pounds gained.", _addResource];
            stepControl.value = 0; // set value back to 800
        }
    }
    else if (gymButton.enabled == false)
    {
        Gym *gymInfo = (Gym*)[WeightRoomFactory createPlayerClass:GYM];
        if (gymInfo != nil)
        {
            [gymInfo calculateAdvantage];
            [gymInfo setNumberOfPeople:20]; // number of buildings
            int _addPeople = gymInfo.numberOfPeople + _calculate;
            displayInfo.text = [NSString stringWithFormat:@"%d total pounds.", _addPeople];
            stepControl.value = 0; // set value back to 20
        }
    }
    NSLog(@"Calculate Muscle button pressed");
}

//
// Segmented color control changes
-(IBAction)segmentChange:(id)sender
{
    UISegmentedControl *colorSwitch = (UISegmentedControl*)sender;
    if (colorSwitch != nil)
    {
        int _pressed = colorSwitch.selectedSegmentIndex;
        
        if (_pressed == 0)
        {
            self.view.backgroundColor = [UIColor lightGrayColor]; // Default
            NSLog(@"Default Pressed");
        }
        else if (_pressed == 1)
        {
            self.view.backgroundColor = [UIColor yellowColor]; // Yellow
            NSLog(@"Yellow Pressed");
        }
        else if (_pressed == 2)
        {
            self.view.backgroundColor = [UIColor blueColor]; // Blue
            NSLog(@"Blue Pressed");
        }
        else if (_pressed == 3)
        {
            self.view.backgroundColor = [UIColor brownColor]; // Brown
            NSLog(@"Brown Pressed");
        }
    }
}


@end
