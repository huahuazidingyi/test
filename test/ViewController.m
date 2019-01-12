//
//  ViewController.m
//  test
//
//  Created by Awin on 2018/9/13.
//  Copyright © 2018年 Awin. All rights reserved.
//

#import "ViewController.h"

#define SemaphoreBengin \
static dispatch_semaphore_t semaphore; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
    semaphore = dispatch_semaphore_create(1); \
}); \
dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);


#define SemaphoreEnd \
dispatch_semaphore_signal(semaphore);

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"1");
        
  
    
    static dispatch_semaphore_t semaphore;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        semaphore = dispatch_semaphore_create(1); //线程的最大并发数
    });
    
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    //执行的代码
    
    dispatch_semaphore_signal(semaphore);
    
    
//    dispatch_queue_t queue = dispatch_queue_create("q", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue = dispatch_get_main_queue();
    dispatch_queue_t queue = dispatch_queue_create("q", DISPATCH_QUEUE_SERIAL);
    
    dispatch_sync(queue, ^{
        NSLog(@"2");
    });
    
    NSLog(@"3");
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
