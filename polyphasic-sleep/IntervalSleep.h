//
//  IntervalSleep.h
//  polyphasic-sleep
//
//  Created by User on 15.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Sleep.h"
@interface IntervalSleep : NSObject

-(IntervalSleep*) initWithTimeStart:(NSDate*) timeStartX timeSleep:(NSTimeInterval)timeSleepX intervalSleep:(NSTimeInterval)intervalSleepX;
- (NSDate*) gettimeStart;
- (void) setArraySleeps:(NSMutableArray*) array;
- (NSMutableArray*) getArraySleeps;
- (NSTimeInterval) getTimeSleep;
- (NSTimeInterval) getIntervalSleep;


@end
