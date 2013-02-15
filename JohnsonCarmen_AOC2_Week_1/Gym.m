//
//  Gym.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "Gym.h"

@implementation Gym

@synthesize _pumpmusc, _hugeMusc;

//
// Method
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPlayerClass:@"Protoss"];
        [self setResources:1000];
        [self setNumberOfPeople:15];
        [self setMuscleSize:30];
        [self set_pumpmusc:150];
        [self set_hugeMusc:5];
    }
    return self;
};

// override calculation method
-(void)calculateAdvantage
{
    [self setMuscleSize:(_pumpmusc / _hugeMusc)];
}

@end
