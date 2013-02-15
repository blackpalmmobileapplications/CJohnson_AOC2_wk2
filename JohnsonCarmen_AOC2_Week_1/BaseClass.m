//
//  BaseClass.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "BaseClass.h"

@implementation BaseClass

// Synthesize creates the methods of getter and setter for properties.
@synthesize playerClass, resources, numberOfPeople, MuscleSize;

// Method
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPlayerClass:nil];
        [self setMuscleSize:0];
    }
    return self;
}

//
// Calculation method for player advantage.
-(void)calculateAdvantage
{
    [self setMuscleSize: resources + numberOfPeople];
}
@end

