//
//  Person.h
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonJSExport.h"
@interface Person : NSObject <PersonJSExport>

@property (nonatomic, strong) NSString *name;

- (void)play;
- (void)playWithGame:(NSString *)game time:(NSString *)time;
- (void)test;
@end
