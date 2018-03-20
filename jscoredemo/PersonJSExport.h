//
//  PersonJSExport.h
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol PersonJSExport <JSExport>

@property (nonatomic, strong) NSString *name;

- (void)play;
- (void)jsCallOCCustomClass;
// 调用多个参数的方法，JS函数命名规则和OC还不一样，很可能调用不到对应的JS生成的函数，为了保证生成的JS函数和OC方法名一致，OC提供了一个宏JSExportAs，用来告诉JS应该生成什么样的函数对应OC的方法，这样就不会调错了。

// PropertyName:JS函数生成的名字
// Selector:OC方法名
// JS就会自动生成playGame这个方法
JSExportAs(playGame, - (void)playWithGame:(NSString *)game time:(NSString *)time);

@end
