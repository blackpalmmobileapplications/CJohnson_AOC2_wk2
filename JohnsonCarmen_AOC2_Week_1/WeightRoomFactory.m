//
//  WeightRoomFactory.m
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import "WeightRoomFactory.h"

@implementation WeightRoomFactory

+(BaseClass *)createPlayerClass: (int)classType;
{
    if (classType == ECTOMORPH)
    {
        return [[Ectomorph alloc] init];
    }
    if (classType == BODYBUILDERS)
    {
        return [[BodyBuilders alloc] init];
    }
    if (classType == GYM)
    {
        return [[Gym alloc] init];
    }
    else return nil;
}

@end
