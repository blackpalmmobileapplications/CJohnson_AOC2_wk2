//
//  BaseClass.h
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject

{
    int classTypes;
}

typedef enum{
    ECTOMORPH,
    BODYBUILDERS,
    GYM
} classTypes;

//
// Properties for all Class subclasses.
@property (strong) NSString *playerClass;
@property int resources;
@property int numberOfPeople;
@property int MuscleSize;

//
// methods
-(id)init;

-(void)calculateAdvantage;

@end

