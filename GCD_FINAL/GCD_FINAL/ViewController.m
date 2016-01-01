//
//  ViewController.m
//  GCD_FINAL
//
//  Created by 李明禄 on 16/1/1.
//  Copyright © 2016年 SocererGroup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self demoGCD1];
//    [self demoGCD2];
    
//    [self demoGCD3];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self demoGCD3];
    
}

//线程间通讯
- (void)demoGCD3 {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"玩命加载中...%@", [NSThread currentThread]);
        
       //更新UI
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"更新UI...%@", [NSThread currentThread]);
        });
    });
}

//精简版
- (void)demoGCD2 {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"%@", [NSThread currentThread]);
    });
    
}


- (void)demoGCD1 {
    
//    1.任务
    void (^task)() = ^{
        NSLog(@"%@", [NSThread currentThread]);
    };
    
    //2. 队列
    
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    //3.将任务添加到队列
    dispatch_async(queue, task);
    
    
    
    
}
@end
