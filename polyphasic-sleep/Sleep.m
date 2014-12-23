//
//  Sleep.m
//  polyphasic-sleep
//
//  Created by User on 22.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import "Sleep.h"

@interface Sleep()
{
    BOOL sleep;
    NSDate *start;
}
@end


@implementation Sleep

- (Sleep*) initSleepWithSleep:(BOOL) sleepX andTimeStart:(NSDate*) startX{
    self = [super init];
    sleep = sleepX;
    start = startX;
    return self;
}

- (NSDate*) getTimeStart{
    return start;
}

- (BOOL) getSleep{
    return sleep;
}

@end
