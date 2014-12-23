//
//  MakerSleeps.m
//  polyphasic-sleep
//
//  Created by User on 22.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import "MakerSleeps.h"

@interface MakerSleeps()

@end


@implementation MakerSleeps

- (void) makeSleeps: (IntervalSleep*) obj{
    NSMutableArray *arraySleeps = [obj getArraySleeps];
    if (!arraySleeps) {
        arraySleeps = [[NSMutableArray alloc]init];
    }
    NSDate *start = [obj gettimeStart];
    for (int i = 1; i <= 32; i++){
        Sleep *sleep = [[Sleep alloc] initSleepWithSleep:YES andTimeStart:start];
        start = [start dateByAddingTimeInterval : [obj getTimeSleep]];
        Sleep *notSleep = [[Sleep alloc] initSleepWithSleep:NO andTimeStart:start];
        start = [start dateByAddingTimeInterval : [obj getIntervalSleep]];
        [arraySleeps addObject:sleep];
        [arraySleeps addObject:notSleep];
    }
    [obj setArraySleeps:arraySleeps];
}

- (Sleep*) getProxySleep:(IntervalSleep*) obj{
    NSMutableArray *sleeps = [obj getArraySleeps];
    int i =0;
    Sleep *pointSleep = [sleeps objectAtIndex:i];
    NSDate *timePoint = [pointSleep getTimeStart];
    while ([timePoint timeIntervalSinceNow] < 0){
        i++;
        pointSleep = [sleeps objectAtIndex:i];
        timePoint = [pointSleep getTimeStart];
    }
    return pointSleep;
}

- (NSString*) getTime:(NSTimeInterval) obj{
    int sec = round(obj);
    int hour = trunc(sec/60/60);
    int min = trunc((sec-hour*60*60)/60);
    sec = sec - hour*60*60 - min*60;
    NSString *res = @"";
    res = [res stringByAppendingFormat:@"%i",hour];
    res = [res stringByAppendingFormat:@":%i",min];
    res = [res stringByAppendingFormat:@":%i",sec];
    return res;
}

@end
