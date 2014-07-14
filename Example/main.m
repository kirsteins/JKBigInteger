//
//  main.m
//  JKInteger
//
//  Created by Jānis Kiršteins on 7/10/13.
//  Copyright (c) 2013 Jānis Kiršteins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKBigInteger.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        JKBigInteger *int1 = [[JKBigInteger alloc] initWithString:@"123"];

        NSLog(@"%@ + %@ = %@", int1, int1, [int1 add:int1]);

        JKBigInteger *int2 = [[JKBigInteger alloc] initWithString:@"10000001234567890123"];
        JKBigInteger *int3 = [[JKBigInteger alloc] initWithString:@"123"];

        NSLog(@"%@ - %@ = %@", int2, int3, [int2 subtract:int3]);
        
        JKBigInteger *int4 = [[JKBigInteger alloc] initWithString:@"11111111111111111111"];

        NSLog(@"%@ * %@ = %@", int4, int4, [int4 multiply:int4]);
        
        JKBigInteger *int5 = [[JKBigInteger alloc] initWithString:@"10000001234567890123123123123"];
        JKBigInteger *int6 = [[JKBigInteger alloc] initWithString:@"123"];

        NSLog(@"%@ / %@ = %@", int5, int6, [int5 divide:int6]);
    }
    return 0;
}
