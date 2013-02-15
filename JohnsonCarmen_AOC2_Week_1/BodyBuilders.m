//
//  BodyBuilders.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "BodyBuilders.h"

@implementation BodyBuilders

@synthesize _pounds, _inches;

//
// Method
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPlayerClass:@"BodyBuilders"];
        [self setResources:20];
        [self setNumberOfPeople:20];
        [self setMuscleSize:0];
        [self set_pounds:50];
        [self set_inches:4];
    }
    return self;
};

// override calculation method
-(void)calculateAdvantage
{
    [self setMuscleSize:(_pounds * _inches)];
}

@end
