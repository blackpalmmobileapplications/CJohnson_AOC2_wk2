//
//  Ectomorph.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "Ectomorph.h"

@implementation Ectomorph

@synthesize _pounds, _healthy;

//
// Method
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPlayerClass:@"Ectomorph"];
        [self setResources:500];
        [self setNumberOfPeople:10];
        [self setMuscleSize:40];
        [self set_pounds:20];
        [self set_healthy:20];
    }
    return self;
};

// override calculation method
-(void)calculateAdvantage
{
    [self setMuscleSize:(_pounds + _healthy)];
}

@end

