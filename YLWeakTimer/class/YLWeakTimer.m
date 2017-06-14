//
//  YLWeakTimer.m
//  YLWeakTimer
//
//  Created by 杨立 on 2017/6/14.
//  Copyright © 2017年 BigCompany. All rights reserved.
//

#import "YLWeakTimer.h"

@interface YLWeakTimer ()

@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, weak) id target;
@property (nonatomic, assign) SEL selector;

@end

@implementation YLWeakTimer

- (void)fireWithTimer:(NSTimer *)timer {
    if (self.target) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.target performSelector:self.selector withObject:timer.userInfo];
#pragma clang diagnostic pop
    } else {
        [timer invalidate];
    }
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                     target:(id)aTarget
                                   selector:(SEL)aSelector
                                   userInfo:(id)userInfo
                                    repeats:(BOOL)yesOrNo {
    YLWeakTimer *weakTimer = [[YLWeakTimer alloc] init];
    weakTimer.target = aTarget;
    weakTimer.selector = aSelector;
    weakTimer.timer = [NSTimer scheduledTimerWithTimeInterval:ti
                                                       target:weakTimer
                                                     selector:@selector(fireWithTimer:)
                                                     userInfo:userInfo
                                                      repeats:yesOrNo];
    return weakTimer.timer;
}

@end
