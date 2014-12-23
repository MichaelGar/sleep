//
//  IntervalSleep.m
//  polyphasic-sleep
//
//  Created by User on 15.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import "IntervalSleep.h"

@interface IntervalSleep()
{
    NSDate *timeStart;
    NSTimeInterval timeSleep;
    NSTimeInterval intervalSleep;
    NSMutableArray *arraySleeps;
    
}
@end

@implementation IntervalSleep

- (IntervalSleep*) initWithTimeStart:(NSDate*) timeStartX timeSleep:(NSTimeInterval)timeSleepX intervalSleep:(NSTimeInterval)intervalSleepX
{
    self = [super init];
    
    timeStart = timeStartX;
    timeSleep = timeSleepX;
    intervalSleep = intervalSleepX;
    
    return self;
}

- (void) setArraySleeps:(NSMutableArray*) array{
    arraySleeps = array;
}

- (NSMutableArray*) getArraySleeps{
    return arraySleeps;
}

- (NSDate*) gettimeStart{
    return timeStart;
}

- (NSTimeInterval) getTimeSleep{
    return timeSleep;
}

- (NSTimeInterval) getIntervalSleep{
    return intervalSleep;
}

@end
