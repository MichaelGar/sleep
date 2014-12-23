//
//  testController.m
//  polyphasic-sleep
//
//  Created by User on 22.12.14.
//  Copyright (c) 2014 Artem Kinyaykin. All rights reserved.
//

#import "testController.h"

@interface testController ()
    @property (weak,nonatomic) IBOutlet UILabel *lab;
@end

@implementation testController
{
    IntervalSleep *sleep;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btTest:(id)sender{
    NSDate *seychas = [NSDate date];
    sleep = [[IntervalSleep alloc]initWithTimeStart:seychas timeSleep:60 intervalSleep:60*60];
    MakerSleeps *m = [[MakerSleeps alloc] init];
    [m makeSleeps:sleep];
    NSLog(@"make");
    [NSTimer scheduledTimerWithTimeInterval:1. target:self selector:@selector(test) userInfo: @"23" repeats:YES];
   }

- (void) test{
    MakerSleeps *m = [[MakerSleeps alloc] init];
    Sleep *point = [m getProxySleep:sleep];
    /*
    NSMutableArray *sleeps = [sleep getArraySleeps];
    int i =0;
    Sleep *pointSleep = [sleeps objectAtIndex:i];
    NSDate *timePoint = [pointSleep getTimeStart];
    while ([timePoint timeIntervalSinceNow] < 0){
        i++;
        pointSleep = [sleeps objectAtIndex:i];
        timePoint = [pointSleep getTimeStart];
    }*/
    NSTimeInterval timeBefore = [[point getTimeStart] timeIntervalSinceNow];
   // BOOL phase = [point getSleep];
    NSLog(@"Date : %f", timeBefore);
    NSString *str;
    if ([point getSleep]) {
        str = @"Время до отбоя: ";
    } else {
        str = @"Время до подъема: ";
    }
    str = [str stringByAppendingString:[m getTime:timeBefore]];
   // NSLog(str);
    self.lab.text = str;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end