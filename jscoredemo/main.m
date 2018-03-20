//
//  main.m
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestCococClass.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                 // insert code here...
                 TestCococClass * testCococClass = [[TestCococClass alloc]init];
                 [testCococClass setNumerator:10];
//                 NSLog(@"numerator is %d", [testCococClass numerator]);
        
                 testCococClass.numerator = 20;
//                 NSLog(@"numerator is %d", testCococClass.numerator);
        
//        [testCococClass jsCallOCBlockWithArguments];
        [testCococClass jsCallOCCustomClass];
        
        
//        Person *person = [[Person alloc] init];
//        [[person playWithGame] game:@"gamedemo" time:@"timedemo"];
//        [person playWithGame:@"gamedemo" time:@"timedemo"];
//        [person test];
    }
    return 0;
}
