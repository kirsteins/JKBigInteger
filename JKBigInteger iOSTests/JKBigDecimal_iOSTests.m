//
//  JKBigDecimal_Unit_Tests.m
//  JKBigInteger
//
//  Created by Henry Phu on 8/9/15.
//  Copyright (c) 2015 Jānis Kiršteins. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JKBigDecimal.h"

@interface JKBigDecimal_iOSTests : XCTestCase

@end

@implementation JKBigDecimal_iOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testJKBigDecimalCompare1
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"1."] compare:[[JKBigDecimal alloc] initWithString:@".11"]] == NSOrderedDescending);
}


-(void)testJKBigDecimalCompare2
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"9.999999999999"] compare:[[JKBigDecimal alloc] initWithString:@"1.99999999999"]] == NSOrderedDescending);
}

-(void)testJKBigDecimalCompare3
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"10.0000"] compare:[[JKBigDecimal alloc] initWithString:@"10.00001"]] == NSOrderedAscending);
}

-(void)testJKBigDecimalCompare4
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"3.14"] compare:[[JKBigDecimal alloc] initWithString:@"3.14"]] == NSOrderedSame);
}

-(void)testJKBigDecimalCompare5
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"] compare:[[JKBigDecimal alloc] initWithString:@"3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"]] == NSOrderedSame);
}

-(void)testJKBigDecimalCompare6
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"-12312.14"] compare:[[JKBigDecimal alloc] initWithString:@".01"]] == NSOrderedAscending);
}

-(void)testJKBigDecimalCompare7
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@"9.999999999999"] compare:[[JKBigDecimal alloc] initWithString:@"1.99999999999"]] == NSOrderedDescending);
}

-(void)testJKBigDecimalCompare8
{
    XCTAssertTrue([[[JKBigDecimal alloc] initWithString:@".1412312312312312312212312231"] compare:[[JKBigDecimal alloc] initWithString:@".2222222222"]] == NSOrderedAscending);
}

-(void)testJKBigDecimalCompare9
{
    XCTAssertTrue([[[JKBigDecimal alloc] init] compare:[[JKBigDecimal alloc] initWithString:@"1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.2222222222"]] == NSOrderedAscending);
}

@end
