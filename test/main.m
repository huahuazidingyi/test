//
//  main.m
//  test
//
//  Created by Awin on 2018/9/13.
//  Copyright © 2018年 Awin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


struct A { char a; int c;double b;  };
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        
        printf("=====%lu", sizeof(struct A));
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
