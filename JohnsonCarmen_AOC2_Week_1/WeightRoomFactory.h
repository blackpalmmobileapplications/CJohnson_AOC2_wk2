//
//  WeightRoomFactory.h
//  JohnsonCarmen_AOC2_Week_1
//
//  Created by Carmen Johnson on 2/7/13.
//  Copyright (c) 2013 Carmen Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseClass.h"
#import "Ectomorph.h"
#import "BodyBuilders.h"
#import "Gym.h"

@interface WeightRoomFactory : NSObject

+(BaseClass *)createPlayerClass: (int)classType;

@end
