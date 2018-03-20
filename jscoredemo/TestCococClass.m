//
//  TestCococClass.m
//  jscoredemo
//
//  Created by lifeng on 2018/3/20.
//  Copyright © 2018年 lifeng. All rights reserved.
//

#import "TestCococClass.h"
#import "Person.h"

@implementation TestCococClass
@synthesize numerator = _abc, denominator = _def;

-(void) print {
    self->_abc = 12;
    self->_def = 30;
}

- (void)jsCallOCBlockWithArguments
{
    NSLog(@"test....");
    // 创建JS运行环境
    JSContext *ctx = [[JSContext alloc] init];
    
    // 2.调用带有参数的block
    // 还是一样的写法，会在JS中生成eat方法，只不过通过[JSContext currentArguments]获取JS执行方法时的参数
    ctx[@"eat"] = ^(){
        // 获取JS调用参数
        NSArray *arguments = [JSContext currentArguments];
        NSLog(@"吃%@----和--- %@",arguments[0], arguments[1]);
    };
    
    // JS执行代码,调用eat方法，并传入参数面包
    NSString *jsCode = @"eat('面包','栗子')";
    
    [ctx evaluateScript:jsCode];
}

- (void)jsCallOCCustomClass
{
    NSLog(@"ddd.nnn...");
    // 创建Person对象
    Person *p = [[Person alloc] init];
    p.name = @"yz";
    
    JSContext *ctx = [[JSContext alloc] init];
    
    // 会在JS中生成Person对象，并且拥有所有值
    // 前提：Person对象必须遵守JSExport协议，
    ctx[@"person"] = p;
    
    // 执行JS代码
    // 注意：这里的person一定要跟上面声明的一样，因为生成的对象是用person引用
     NSString *jsCode = @"person.play()";
//    NSString *jsCode = @"person.playWithGame('德州扑克','晚上')";
    
    [ctx evaluateScript:jsCode];
    
}
@end
