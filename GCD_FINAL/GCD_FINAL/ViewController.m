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
    [self demoGCD1];
    
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
