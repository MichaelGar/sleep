//
//  MakerSleeps.h
//  polyphasic-sleep
//
//  Created by User on 22.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sleep.h"
#import "IntervalSleep.h"

@interface MakerSleeps : NSObject

- (void) makeSleeps: (IntervalSleep*) obj;
- (Sleep*) getProxySleep:(IntervalSleep*) obj;
- (NSString*) getTime:(NSTimeInterval) obj;

@end
