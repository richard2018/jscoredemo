//
//  Person.m
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)play
{
    NSLog(@"ddddlljdjfkdjfkdjfkdjfkdjfk");
    NSLog(@"%@玩",_name);
}

- (void)playWithGame:(NSString *)game time:(NSString *)time
{
    NSLog(@"%@在%@玩%@",_name,time,game);
}
- (void)test
{
    NSLog(@"test %@", @"xxxx");
}
@end
