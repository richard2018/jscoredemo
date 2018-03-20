//
//  TestCococClass.h
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
@interface TestCococClass : NSObject
@property int numerator, denominator;
-(void)print;
-(void)jsCallOCBlockWithArguments;
- (void)jsCallOCCustomClass;
@end
