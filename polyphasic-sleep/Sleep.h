//
//  Sleep.h
//  polyphasic-sleep
//
//  Created by User on 22.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sleep : NSObject

- (Sleep*) initSleepWithSleep:(BOOL) sleepX andTimeStart:(NSDate*) startX;
- (NSDate*) getTimeStart;
- (BOOL) getSleep;

@end
